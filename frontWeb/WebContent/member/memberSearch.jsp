<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberSearch.jsp</title>
<script>
	/* if('${errorCode}'==1){
		alert('${error}');
		} */
	fuction decoTest(){
		console.log("test");
	}
</script>
</head>
<body>
<h3>회원검색</h3>
<a href="${pageContext.request.contextPath }/memberList.do">전체검색</a>
	<form action="${pageContext.request.contextPath}/memberSearch.do">
		<input type="hidden" name="job" value="search">
		id : <input name="id">
		<button>검색</button>
	</form>

</body>
</html>