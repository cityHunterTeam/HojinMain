<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>        
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="../css/bootstrap.min.css">

<meta http-equiv="Content-Type" content="application/xhtml+xml; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta http-equiv="Content-Script-Type" content="text/javascript">

<title>역명조회</title>
<meta name="author" content="한국철도공사">
<meta name="copyright" content="300-720 대전광역시 동구 중앙로 240">
 



	
	<script type="text/javascript">

	</script>
	<script language="javascript">

	function putStation(name,code)
	{	
		opener.document.getElementById("txtGoStart").value = name;
		opener.document.getElementById("code1").value=code;
		self.close();
		
	}
	
	</script>
		
	<style type="text/css">
		.bg03 {background:#FCDBF2}
		.tbl_h tr td{font-weight:bold;color:#017cab}
	</style>
</head>
<body class="popup">
	<div class="popup_ly" style="width:92%">
		<div class="header">
			<h2>역명조회</h2>
			<a href="#" onclick="window.close();" class="pop_close" title="팝업 닫기">닫기</a>
		</div>
		<div class="cont">
			<!-- popup content -->
			<h2 class="tit_pop">주요역</h2>
			<table class="table table-sm" summary="출발역을 선택 하세요." style="width: 30%">
				<caption>역명조회</caption>
				<colgroup>
					<col width="20%">
					<col width="20%">
					<col width="20%">
					<col width="20%">
					<col width="20%">
				</colgroup>
				<tbody>
						<tr>
							<td class="bg03"><a href="javascript:putStation('서울'    ,'0001')" title="KTX 정차역">서울    </a></td>
							<td class="bg03"><a href="javascript:putStation('용산'    ,'0104')" title="KTX 정차역">용산    </a></td>
							<td class="bg03"><a href="javascript:putStation('영등포'  ,'0002')" title="KTX 정차역">영등포  </a></td>
							<td class="bg03"><a href="javascript:putStation('광명'    ,'0501')" title="KTX 정차역">광명    </a></td>
							<td class="bg03"><a href="javascript:putStation('수원'    ,'0003')" title="KTX 정차역">수원    </a></td>
						</tr>	
						<tr>
							<td class=""><a href="javascript:putStation('평택'    ,'0004')">평택    </a></td>
							<td class="bg03"><a href="javascript:putStation('천안아산','0502')" title="KTX 정차역">천안아산</a></td>
							<td class=""><a href="javascript:putStation('천안'    ,'0005')">천안    </a></td>
							<td class="bg03"><a href="javascript:putStation('오송'    ,'0297')" title="KTX 정차역">오송    </a></td>
							<td class=""><a href="javascript:putStation('조치원'  ,'0007')">조치원  </a></td>
						</tr>
						<tr>
							<td class="bg03"><a href="javascript:putStation('대전'    ,'0010')" title="KTX 정차역">대전    </a></td>
							<td class="bg03"><a href="javascript:putStation('서대전'  ,'0025')" title="KTX 정차역">서대전  </a></td>
							<td class=""><a href="javascript:putStation('김천'    ,'0012')">김천    </a></td>
							<td class=""><a href="javascript:putStation('구미'   ,'0013')">구미    </a></td>
							<td class="bg03"><a href="javascript:putStation('김천구미' ,'0507')" title="KTX 정차역">김천구미</a></td>
						</tr>
						<tr>
							<td class=""><a href="javascript:putStation('대구'   ,'0023')">대구    </a></td>
							<td class="bg03"><a href="javascript:putStation('동대구'   ,'0015')" title="KTX 정차역">동대구  </a></td>
							<td class="bg03"><a href="javascript:putStation('포항'    ,'0515')" title="KTX 정차역">포항  </a></td>
							<td class="bg03"><a href="javascript:putStation('밀양'    ,'0017')" title="KTX 정차역">밀양    </a></td>
							<td class="bg03"><a href="javascript:putStation('구포'    ,'0019')" title="KTX 정차역">구포    </a></td>
						</tr>
						<tr>
							<td class="bg03"><a href="javascript:putStation('부산'    ,'NAT014445')" title="KTX 정차역">부산    </a></td>
							<td class="bg03"><a href="javascript:putStation('신경주'  ,'0508')" title="KTX 정차역">신경주  </a></td>
							<td class=""><a href="javascript:putStation('태화강'  ,'0125')">태화강  </a></td>
							<td class="bg03"><a href="javascript:putStation('울산(통도사)' ,'0509')" title="KTX 정차역">울산(통도사)</a></td>
							<td class="bg03"><a href="javascript:putStation('마산'    ,'0059')" title="KTX 정차역">마산    </a></td>
						</tr>
						<tr>
							<td class="bg03"><a href="javascript:putStation('창원중앙','0512')" title="KTX 정차역">창원중앙</a></td>
							<td class="bg03"><a href="javascript:putStation('경산'    ,'0024')" title="KTX 정차역">경산    </a></td>
							<td class="bg03"><a href="javascript:putStation('논산'    ,'0027')" title="KTX 정차역">논산    </a></td>
							<td class="bg03"><a href="javascript:putStation('익산'    ,'0030')" title="KTX 정차역">익산    </a></td>
							<td class="bg03"><a href="javascript:putStation('정읍'    ,'0033')" title="KTX 정차역">정읍    </a></td>
						</tr>
						<tr>
							<td class="bg03"><a href="javascript:putStation('광주송정','0036')" title="KTX 정차역">광주송정</a></td>
							<td class="bg03"><a href="javascript:putStation('목포'    ,'0041')" title="KTX 정차역">목포    </a></td>
							<td class="bg03"><a href="javascript:putStation('전주'    ,'0045')" title="KTX 정차역">전주    </a></td>
							<td class="bg03"><a href="javascript:putStation('순천'    ,'0051')" title="KTX 정차역">순천    </a></td>
							<td class="bg03 lin02"><a href="javascript:putStation('여수EXPO','0053')" title="KTX 정차역">여수EXPO(구,여수역)</a></td>
						</tr>
						<tr>
							<td class=""><a href="javascript:putStation('대천'    ,'0083')">대천    </a></td>
							<td class="bg03"><a href="javascript:putStation('청량리'  ,'0090')">청량리  </a></td>
							<td class=""><a href="javascript:putStation('춘천'    ,'0153')">춘천    </a></td>
							<td class=""><a href="javascript:putStation('제천'    ,'0093')">제천    </a></td>
							<td class=""><a href="javascript:putStation('동해'    ,'0113')">동해    </a></td>
						</tr>
						<tr>
							<td class="bg03"><a href="javascript:putStation('강릉'	,'0115')" title="KTX 정차역">강릉	</a></td>
							<td class="bg03"><a href="javascript:putStation('행신'	,'0390')" title="KTX 정차역">행신	</a></td>
							<td class=""><a href="javascript:putStation('남춘천'	,'0152')">남춘천 	</a></td>
							<td class=""><a href="javascript:putStation('부전'	,'0190')">부전    	</a></td>
							<td class=""><a href="javascript:putStation('신탄진'	,'0009')">신탄진    </a></td>
						</tr>
						<tr>
							<td class=""><a href="javascript:putStation('영동'	,'0011')">영동    </a></td>
							<td class=""><a href="javascript:putStation('왜관'	,'0014')">왜관    </a></td>
							<td class=""><a href="javascript:putStation('원주'	,'0092')">원주    </a></td>
							<td class="bg03"><a href="javascript:putStation('정동진'	,'0262')" title="KTX 정차역">정동진 </a></td>
							<td class=""><a href="javascript:putStation('홍성'	,'0081')">홍성    </a></td>
						</tr>
				</tbody>
			</table>
		</div>
	</div>

    <script src="../js/jquery-1.12.1.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>

</body></html>
</html>