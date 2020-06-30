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


</style>
 <c:set var="contextPath"  value="${pageContext.request.contextPath}"/>    

<jsp:include page="/member/header.jsp"/>

<meta charset="UTF-8">
<title>글목록</title>
</head>
<body>
	<table class="table table-hover text-center">
				<colgroup class="d-none d-lg-table-column-group">
					<col style="width:80px"/>
					<col />
					<col style="width:100px"/>
					<col style="width:100px"/>
					<col style="width:100px"/>
				</colgroup>
				<thead class="thead-light d-none d-lg-table-header-group">
					<tr height="10" align="center" bgcolor="lightgreen">
						<td>글번호</td>
						<td>출발역</td>
						<td>도착역</td>
						<td>어른요금</td>
						<td>출발일</td>
					</tr>
				</thead>
				<tbody>
				
		<c:if test="${hashlist== null}">
			<tr height="10">
				<td colspan="4">
					<p align="center">
						<b><span style="font-size:9pt;">등록된 글이 없습니다.</span></b>
					</p>
				</td>
			</tr>	
		</c:if>
		<c:if test="${hashlist != null}">
		
			<c:forEach var="hash" items="${hashlist}">
				<c:forEach var="article" items="${hash}">
				<tr align="center">
					<%--varStatus의 count속성을 이용해 글번호를 1부터 자동으로 표시함 --%>
					<td width="10%">"${article.value}"</td>
					<td width="10%">"${article.value}"</td>
					<td width="10%">"${article.value}"</td>
					<td width="10%">"${article.value}"</td>
				</tr>
				</c:forEach>
			</c:forEach>
		</c:if>
		</tbody>
	</table>
	
	<div class="row">
		<div class="col-12">
			<ul class="pagination justify-content-center">
			<c:if test="${count > 0}">
				<c:if test="${startPage > pageBlock}">
					<c:url var="url1" value="/brd/list.do">
						<c:param name="pageNum" value="${startPage-pageBlock}"/>
					</c:url>
						<a style="font-size: xx-large;" class="page-link" href='${url1}'>Previous</a>
				</c:if>
			
				<c:forEach var="i" begin="${startPage}" end="${endPage}">
				<c:url var="url2" value="/brd/list.do">
				<c:param name="pageNum" value="${i}"/>
				</c:url>
						<a style="font-size: xx-large;" class="page-link" href='${url2}'>${i}</a>
				</c:forEach>
				
				<c:if test="${endPage < pageCount}">
					<c:url var="url3" value="/brd/list.do">
						<c:param name="pageNum" value="${startPage+pageBlock}"/>
					</c:url>
						<a style="font-size: xx-large;" class="page-link" href='${url3}'>Next</a>
				</c:if>
			</c:if>
			</ul>
		</div>
	</div>
	<br>
	<br>
</body>
<jsp:include page="/member/footer.jsp"/>
</html>