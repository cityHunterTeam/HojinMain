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
				<thead >
					<tr height="10" align="center" bgcolor="lightgreen">
						<td>예약번호</td>
						<td>출발지</td>
						<td>도착지</td>
						<td>기차종류</td>
						<td>운임요금</td>
					</tr>
				</thead>
				<tbody>
				
				<tr align="center">
					<td width="5%">${vo.traingradename}</td>
					<td width="10%">${vo.adultcharge}</td>
				<td width="10%"><fmt:formatDate value="${vo.depplandtime}" pattern="yyyy-MM-dd kk:mm"/></td> 
					<td width="10%">${vo.depplacename}</td>
					<td width="10%">${vo.arrplacename}</td>
				</tr>
		</tbody>
	</table>
	<br>
	<br>
</body>
<jsp:include page="/member/footer.jsp"/>
</html>