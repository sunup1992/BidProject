<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.auction.vo.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Auction</title>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/maxPrice.js"></script>
<%
	int total = 0;
	int z = ((List<ReplyVO>)request.getAttribute("reply")).size();
	
	if(z != 0){
		total = ((List<ReplyVO>)request.getAttribute("reply")).get(0).getTotal();
	}
%>
</head>
<body>
옥션페이지
${auction.prodname}
<br>

현재 최고 응찰가 <span id="output"></span>
<br>
시작가 : KRW ${auction.price}
<br>
<form action="/BidProject/auctionProc.au" method="post">
	<input type="hidden" value="${loginOK.id}" name="id"/>
	<input type="hidden" value="${auction.code}" id="code" name="code"/>
	<input type="hidden" value="${auction.term}" id="term" name="term"/>
	응찰가 : <input type="number" id="click" name="finalPrice"/>
	
	<span id="submit"><input type="submit" value="PLACE BID"/></span>
</form>
제품상태 : ${auction.condition}
<br>
남은 시간 : <span id="dtime"></span>
<br>
태그 : ${auction.ref}
<h3>상세설명</h3>
<hr>
${auction.descrip}
<br><br>

${loginOK.id}
${auction.code}
${auction.term}

<br>댓글 수 &nbsp;<%=total %>&nbsp;&nbsp;&nbsp;
<c:if test="${loginOK.id == sale.id}">
<a href="mymodi.go"><button>수정</button></a>
<a href="delete.bd?seq=${saModi.seq}"><button>삭제</button></a>
</c:if>
<hr>

<table class="table table-hover table-secondary">
<c:if test="${!empty reply}">
<c:forEach var="ob" items="${reply}">
	<tr>
		<td>${ob.id }&nbsp;&nbsp;&nbsp;</td>
		<td>${ob.content }</td>
	</tr>
</c:forEach>
</c:if>
</table>

<form action="/BidProject/replyInsert.au" method="post">
	<input type="hidden" value="${loginOK.id}" name="id"/>
	<input type="hidden" value="${auction.code}" name="code"/>
	<input type="text" id="content" name="content" style="width:450px; height:19px;"/>
	&nbsp;&nbsp;
	<input type="submit" value=" 등록  "/>
</form>
</body>
</html>

