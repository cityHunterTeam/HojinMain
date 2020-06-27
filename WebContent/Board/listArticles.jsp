<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.cls1 {
	text-decoration: none;
}

.cls2 {
	text-align: center;
	font-size: 30px;
}
a{
	text-align: center;

}

#paging {
	text-align: center;
	font-size: 2em;
	font-style: normal;
	margin: 1em;
	
}
</style>
 <c:set var="contextPath"  value="${pageContext.request.contextPath}"/>    

<meta charset="UTF-8">
<title>글목록</title>
</head>
<body>
	<table align="center" border="1" width="80%">
		<tr height="10" align="center" bgcolor="lightgreen">
			<td>글번호</td>
			<td>작성자</td>
			<td>글제목</td>
			<td>작성일</td>
		</tr>

		<c:if test="${articleList== null}">
			<tr height="10">
				<td colspan="4">
					<p align="center">
						<b><span style="font-size:9pt;">등록된 글이 없습니다.</span></b>
					</p>
				</td>
			</tr>	
		</c:if>
		<c:if test="${articleList != null}">
			<c:forEach var="article" items="${articleList}">
				<tr align="center">
					<td width="5%">${article.num}</td>
					<td width="10%">${article.id}</td>
					<td width="20%">${article.title}</td>
					<td width="5%"><fmt:formatDate value="${article.date}"/></td>
				</tr>
			</c:forEach>
		</c:if>
	</table>
	<a class="cls1" href="${contextPath}/brd/write.do">
		<p class="cls2">글쓰기</p>		
	</a>
	<div id="paging">
	<c:if test="${count > 0}">
		<c:if test="${startPage > pageBlock}">
			<c:url var="url1" value="/brd/list.do">
				<c:param name="pageNum" value="${startPage-pageBlock}"/>
			</c:url>
			<a href='${url1}'>[이전]</a>
		</c:if>
		
		<c:forEach var="i" begin="${startPage}" end="${endPage}">
		<c:url var="url2" value="/brd/list.do"></c:url>
			<a href='${url2}'>[${i}]</a>
		</c:forEach>
		
		<c:if test="${endPage < pageCount}">
			<c:url var="url3" value="/brd/list.do">
				<c:param name="pageNum" value="${startPage+pageBlock}"/>
			</c:url>
			<a href='${url3}'>[다음]</a>
		</c:if>
	</c:if>
	</div>
</body>
</html>