<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script>
	$(function(){
		//초기화
		$("[name=gender]").val(["${member.gender}"]);
		$("[name=hobby]").val("${member.hobby}".split(",")); 
		$("[name=mailyn]").val(["${member.mailyn}"]);
		$("#frm [name=job]").val("${member.job}");
	});
</script>
</head>
<body>

<h3 class="page_title">회원수정 </h3>
<form action="${pageContext.request.contextPath }/memberSearch.do">
	<input type="hidden" name="job" value="update">
	<label for="id">id: </label><input name="id">
	<button>검색</button>
</form>

<!-- 검색 결과를 출력 -->
<c:if test="${not empty member}">
<form method="post" id="frm" name="frm"
	action="${pageContext.request.contextPath}/memberInsert.do"
	onsubmit="return inputCheck()">
	<div>
		<label>id:</label>
		<input type="text" name="id" value="${member.id }" readonly="readonly">
	</div>
	<div>
		<label>pw:</label>
		<input type="password" name="pw" value="${member.pw }">
	</div>
	<div>
		<label for="gender">성별</label>
		<input type="radio" id="male" name="gender" value="male">남
		<input type="radio" id="female" name="gender" value="female">여
  	</div>
  
	<div>
		<label>직업:</label>
		<select name="job">
			<option value="">선택</option>
	  		<option value="student">student</option>
	  		<option value="programer">programer</option>
	  		<option value="it">it</option>
		</select>
	</div>
	<div>
		<label for="reason">가입동기</label>
		<textarea name="reason">${member.reason }</textarea>
	</div>
	<div>
		<label>메일수신여부</label>
		<input type="checkbox" id="mailyn" name="mailyn">
	</div>
	<div>
		<label>취미</label>
		<input type="checkbox" name="hobby" value="read">독서
		<input type="checkbox" name="hobby" value="game">게임
		<input type="checkbox" name="hobby" value="sleep">잠
	</div>
	<div>
		<button type="reset">초기화</button>
		<button>등록</button>
	</div>
</form>
</c:if>


</body>
</html>