<html xmlns="http://www.w3.org/1999/xhtml">
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>	
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js" type="text/javascript"></script>
 
    <script>
        // html 이 다 로딩된 후 실행
        $(document).ready(function() {
            // 체크박스들이 변경됬을때
            $(":checkbox").change(function() {
                var cnt = $("#person").val();
                 
                // 셀렉트박스의 값과 체크박스중 체크된 갯수가 같을때, 다른 체크박스들을 disable 처리
                if( cnt==$(":checkbox:checked").length ) {
                    $(":checkbox:not(:checked)").attr("disabled", "disabled");
                }
                // 체크된 갯수가 다르면 활성화 시킴
                else {
                    $(":checkbox").removeAttr("disabled");
                }
            });
             
            // 셀렉트박스에서 다른 인원수를 선택하면 초기화 시킴
            $("#person").change(function(){
                $(":checkbox").removeAttr("checked");
                $(":checkbox").removeAttr("disabled");
            });
        });
    </script>
</head>
<body>
    <span>인원수 선택 : </span>
    <select id="person">
        <option value="1">1명</option>
        <option value="2">2명</option>
        <option value="3">3명</option>
        <option value="4">4명</option>
        <option value="5">5명</option>
        <option value="6">6명</option>
        <option value="7">7명</option>
        
    </select>
 
    <table border="1">
        <tr>
        <c:forEach var="i" begin="1" end="20">
            <td><label><input type="checkbox"/>A${i}</label></td>
        </c:forEach>
        </tr>
        <tr>
        <c:forEach var="i" begin="1" end="20">
            <td><label><input type="checkbox"/>B${i}</label></td>
        </c:forEach>    
        </tr>
        <tr>
        <c:forEach var="i" begin="1" end="20">
            <td><label><input type="checkbox"/>C${i}</label></td>
        </c:forEach>    
        </tr>
        <tr>
        <c:forEach var="i" begin="1" end="20">
            <td><label><input type="checkbox"/>D${i}</label></td>
        </c:forEach>    
        </tr>
    </table>
</body>
</html>
