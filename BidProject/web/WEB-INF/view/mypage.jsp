<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>[마이페이지]</h2>
<form action="/BidProject/update.go" method="post">
	<input type="submit" value="회원정보수정"/>
</form>

<form action="/BidProject/delete.go" method="post">
	<input type="submit" value="회원탈퇴"/>
</form>

<a href="/BidProject/main.go">메인으로 가기</a>


</body>
</html>