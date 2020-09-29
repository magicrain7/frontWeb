package com.dev.common;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dev.controller.member.ChartData;
import com.dev.controller.member.MemberDeleteController;
import com.dev.controller.member.MemberInsertController;
import com.dev.controller.member.MemberListController;
import com.dev.controller.member.MemberSearchController;
import com.dev.controller.member.MemberSearchPageController;
import com.dev.controller.member.MemberUpdateController;
import com.dev.controller.users.DeleteUsers;
import com.dev.controller.users.GetUsers;
import com.dev.controller.users.GetUsersList;
import com.dev.controller.users.InsertUsers;
import com.dev.controller.users.UpdateUsers;

/**
 * Servlet implementation class FrontController
 */
/*@WebServlet(name="front",
			urlPatterns = "*.do", 
			initParams = 
			{
				@WebInitParam(name = "charset", value="UTF-8")
			})
*/
@MultipartConfig
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	String charset = null;
	HashMap<String, Controller> list = null;
	
	@Override
	
	//메모리 로딩1번만  - init()  uril <-> sub controller 매핑
	public void init(ServletConfig config) throws ServletException {
		charset = config.getInitParameter("charset");
		list = new HashMap<String, Controller>();
		list.put("/memberInsert.do", new MemberInsertController());
		list.put("/memberSearch.do", new MemberSearchController());
		list.put("/admin/memberSearchPage.do", new MemberSearchPageController());
		list.put("/memberSearchPage.do", new MemberSearchPageController());
		list.put("/memberUpdate.do", new MemberUpdateController());
		list.put("/memberDelete.do", new MemberDeleteController());
		list.put("/memberList.do", new MemberListController());

		//user ajax 처리
		list.put("/ajax/DeleteUsers.do", new DeleteUsers());
		list.put("/ajax/GetUsers.do", new GetUsers());
		list.put("/ajax/GetUsersList.do", new GetUsersList());
		list.put("/ajax/InsertUsers.do", new InsertUsers());
		list.put("/ajax/UpdateUsers.do", new UpdateUsers());
		
		
		//chart data를 ajax로
		list.put("/ajax/ChartData.do", new ChartData());
	}
	
	public FrontController() {
        super();
    }
	
	//요청 들어올때 마다
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding(charset);
		//response.setCharacterEncoding(charset);
		response.setContentType("text/html; charset=UTF-8");
		String uri = request.getRequestURI(); 		   		// frontWeb/memberInsert.do
		String contextPath = request.getContextPath(); 		// frontWeb
		String path = uri.substring(contextPath.length());  // /memberInsert.do
		Controller subController = list.get(path);
		subController.execute(request, response);
	}

}
