<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	if( '${erorr}' != ''){
		alert('error');
	}
</script>
</head>
<body>
<h3>회원삭제</h3>
${error }
	<form action="${pageContext.request.contextPath}/memberSearch.do">
	<!-- 어디서 요청이 왔는지 확인하려고   -->
		<input type="hidden" name="job" value="delete">
		id : <input name="id">
		<button>검색</button>
	</form>
<!-- 검색 결과 출력 -->
<c:if test="${not empty member }">
	${member.job }<br>
	${member.gender }<br>
	${member.id }<br>
	<form action="${pageContext.request.contextPath}/memberDelete.do">
	    <input name="id" value="${member.id }"  type="hidden">
		<button>삭제</button>
	</form>	
</c:if>
</body>
</html>