<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
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
	<table class="table table-hover text-center" style="width: 80%; margin:auto;" >
				<thead>
					<tr height="10" align="center" bgcolor="lightgreen">
						<td>출발일</td>
						<td>출발역</td>
						<td>도착역</td>
						<td>운임요금</td>
					</tr>
				</thead>
				<tbody>
		<c:if test="${fn:length(hashlist) == 0}">
			<tr height="10">
				<td colspan="4">
					<p align="center">
							<br>
						<b><span style="font-size:20pt;">해당하는 열차가 없습니다.</span></b>
					</p>
				</td>
			</tr>	
		</c:if>
		<c:if test="${fn:length(hashlist) != 0}">
		
			<c:forEach var="hash" items="${hashlist}" >
				<tr align="center">
					<c:if test="${hash['adultcharge'] != 0}">
<%-- 					<td width="10%"><fmt:formatDate value="${hash['depplandtime']}" pattern="yyyy-MM-dd kk:mm"/></td> --%>
					<td width="10%">${hash["depplandtime"]}</td>
					<td width="10%">${hash["depplacename"]}</td>
					<td width="10%">${hash["arrplacename"]}</td>
					<td width="10%">${hash["adultcharge"]}원</td>
					</c:if>
				</tr>
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