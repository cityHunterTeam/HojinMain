<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Martine</title>
    <link rel="icon" href="../img/favicon.png">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <!-- animate CSS -->
    <link rel="stylesheet" href="../css/animate.css">
    <!-- owl carousel CSS -->
    <link rel="stylesheet" href="../css/owl.carousel.min.css">
    <!-- themify CSS -->
    <link rel="stylesheet" href="../css/themify-icons.css">
    <!-- flaticon CSS -->
    <link rel="stylesheet" href="../css/flaticon.css">
    <!-- fontawesome CSS -->
    <link rel="stylesheet" href="../fontawesome/css/all.min.css">
    <!-- magnific CSS -->
    <link rel="stylesheet" href="../css/magnific-popup.css">
    <link rel="stylesheet" href="../css/gijgo.min.css">
    <!-- niceselect CSS -->
    <link rel="stylesheet" href="../css/nice-select.css">
    <!-- slick CSS -->
    <link rel="stylesheet" href="../css/slick.css">
    <!-- style CSS -->
    <link rel="stylesheet" href="../css/style.css"> 
    
     <link rel="stylesheet" href="../css/join.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<jsp:include page="../member/header.jsp"></jsp:include>
		<div class="container pb-5">
			<form autocomplete="off" onkeydown="return captureReturnKey(event)" onsubmit="return false;" action="searchpro.jin" method="post" name="search">
				<div class="container mt-5 ">
					<div class="btn-group btn-group-toggle mb-2 round_trip_div" data-toggle="buttons">
						<label for="round_trip" class="btn btn-outline-dark btn-light active"><input type="radio" name="round_trip" value="1" class="custom-radio mr-0" checked="checked">왕복</input></label> <label
							for="round_trip" class="btn btn-outline-dark btn-light"><input type="radio" name="round_trip" value="0" class="custom-radio ml-0">편도</input></label>
					</div>
				</div>
				<div class="Search border pl-5 pr-5 bg-light rounded">
					<br>
					<div class="row 1row">
						<div class="col-sm-3">
							<div class="input-group mb-3 border border-top-0 border-right-0 border-left-0">
								<i class='fas fa-plane-departure pt-3'></i> <input type="text" class="form-control shadow-none" name="starting" id="starting" placeholder="출발지">
							</div>
						</div>
						<div class="col-sm-3 ">
							<div class="input-group mb-3 border border-top-0 border-right-0 border-left-0 ">
								<i class='fas fa-plane-arrival pt-3'></i> <input type="text" class="form-control" name="destination" id="destination" placeholder="도착지">
							</div>
						</div>
						<div class="col-sm-6 row pt-0">
							<div class="col-6">
								<div class="input-group mb-3 input-daterange border border-top-0 border-right-0 border-left-0" id="datepicker1">
									<i class='	far fa-calendar-alt pt-3'></i> <input type="text" class="form-control" id="from" name="from" placeholder="가는날" width="50px">
								</div>
							</div>
							<div class="col-6">
								<div class="input-group mb-3 rt input-daterange border border-top-0 border-right-0 border-left-0 to_div" id="datepicker2">

									<input type="text" class="form-control" id="to" name="to" placeholder="오는날" width="50px">
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-2">
							<div class="input-group mb-3 border border-top-0 border-right-0 border-left-0">
								<i class='far fa-user pt-3'></i> <input type="text" class="form-control" name="adult" placeholder="성인">
							</div>
						</div>
						<div class="col-sm-2">
							<div class="input-group mb-3 border border-top-0 border-right-0 border-left-0">
								<i class='far fa-user pt-3'></i> <input type="text" class="form-control" name="child" placeholder="소아">
							</div>
						</div>
						<div class="col-sm-2">
							<div class="input-group mb-3 border border-top-0 border-right-0 border-left-0">
								<i class='far fa-user pt-3'></i> <input type="text" class="form-control" name="baby" placeholder="유아">
							</div>
						</div>
						<div class="col-sm-6 border border-top-0 border-right-0 border-left-0 border">
							<input type="button" class="btn btn-outline-primary" onclick="fnSubmit()" value="항공권 검색">
						</div>
					</div>
				</div>
			</form>
			</div>
			<jsp:include page="../member/footer.jsp"></jsp:include>
			<!-- jquery plugins here-->
    <script src="js/jquery-1.12.1.min.js"></script>
    <!-- popper js -->
    <script src="js/popper.min.js"></script>
    <!-- bootstrap js -->
    <script src="js/bootstrap.min.js"></script>
    <!-- magnific js -->
    <script src="js/jquery.magnific-popup.js"></script>
    <!-- swiper js -->
    <script src="js/owl.carousel.min.js"></script>
    <!-- masonry js -->
    <script src="js/masonry.pkgd.js"></script>
    <!-- masonry js -->
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/gijgo.min.js"></script>
    <!-- contact js -->
    <script src="js/jquery.ajaxchimp.min.js"></script>
    <script src="js/jquery.form.js"></script>
    <script src="js/jquery.validate.min.js"></script>
    <script src="js/mail-script.js"></script>
    <script src="js/contact.js"></script>
    <!-- custom js -->
    <script src="js/custom.js"></script>
</body>
</html>