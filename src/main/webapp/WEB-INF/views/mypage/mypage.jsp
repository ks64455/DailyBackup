<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<meta content="" name="descriptison">
<meta content="" name="keywords">

<!-- Favicons -->
<link href="/resources/assets/img/DHS-icon.png" rel="icon">
<link href="/resources/assets/img/DHS-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css?family=Poppins:300,300i,400,400i,600,600i,700,700i|Satisfy|Comic+Neue:300,300i,400,400i,700,700i" rel="stylesheet">

<!-- Vendor CSS Files -->
<link rel="stylesheet" type="text/css" href="/resources/assets/vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="/resources/assets/vendor/icofont/icofont.min.css">
<link rel="stylesheet" type="text/css" href="/resources/assets/vendor/boxicons/css/boxicons.min.css">
<link rel="stylesheet" type="text/css" href="/resources/assets/vendor/animate.css/animate.min.css">
<link rel="stylesheet" type="text/css" href="/resources/assets/vendor/venobox/venobox.css">
<link rel="stylesheet" type="text/css" href="/resources/assets/vendor/owl.carousel/assets/owl.carousel.min.css">

<!-- Template Main CSS File -->
<link rel="stylesheet" type="text/css" href="/resources/assets/css/style.css">

<!-- jQuery 사용 -->
<script src="http://code.jquery.com/jquery-latest.js"></script>

<!-- datepicker 설정 -->
<link href="/resources/dateAndTimePicker/dist/css/jquery-ui.css" rel="stylesheet" type="text/css">
<script src="/resources/dateAndTimePicker/dist/js/jquery-ui.js"></script>

<!-- timepicker 설정 -->
<script type="text/javascript" src="/resources/dateAndTimePicker/dist/js/jquery.timepicker.min.js" ></script>
<link type="text/css" rel="stylesheet" href="/resources/dateAndTimePicker/dist/css/jquery.timepicker.css" media=""/>

<!-- =======================================================
	* Template Name: Delicious - v2.0.0
	* Template URL: https://bootstrapmade.com/delicious-free-restaurant-bootstrap-theme/
	* Author: BootstrapMade.com
	* License: https://bootstrapmade.com/license/
	======================================================== -->

<!-- Vendor JS Files -->
<script src="/resources/assets/vendor/jquery/jquery.min.js"></script>
<script src="/resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="/resources/assets/vendor/jquery.easing/jquery.easing.min.js"></script>
<script src="/resources/assets/vendor/php-email-form/validate.js"></script>
<script src="/resources/assets/vendor/jquery-sticky/jquery.sticky.js"></script>
<script src="/resources/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
<script src="/resources/assets/vendor/venobox/venobox.min.js"></script>
<script src="/resources/assets/vendor/owl.carousel/owl.carousel.min.js"></script>

<!-- Template Main JS File -->
<script type="text/javascript" src="/resources/assets/js/main_main.js"></script>

<!-- 모바일 웹 페이지 설정 -->
<link rel="shortcut icon" href="/resources/image/icon.png" />
<link rel="apple-touch-icon" href="/resources/image/icon.png" />
<!-- 모바일 웹 페이지 설정 끝 -->
<!--[if lt IE 9]>
<script src="/resources/include/js/html5shiv.js"></script>
<![endif]-->
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript">

$(function() {
	
	$("#mypageBtn").click(function() {
		$("#mypageForm").attr("method","post");
		$("#mypageForm").attr("action","/mypage/mypage.do");
		$("#mypageForm").submit();
	});
	
	var msg = "<c:out value='${msg}'/>";
	
	if (msg != ""){
		alert(msg);
	}
	
	$("#memberUpdate").click(function() {
		location.href = "/mypage/memberUpdate.do";
	})
	
});

</script>
</head>
<body>
	<c:if test="${empty login }">
		<script type="text/javascript">
			alert("로그인해주세요");
			location.href="/";
		</script>
	</c:if>
	<!-- header 삽입 -->
	<jsp:include page="/WEB-INF/views/client/main/header.jsp"></jsp:include>
	
	<!-- ======= Reserve Section ======= -->
	<section id="about" class="about">
	<div class="container-fluid">
		<div class="row">
			<!-- 최상단 구분 -->
			<div style="width: 100%; height: 100px; margin-bottom: 50px;">
			</div>
			
			<div>
				<input type="button" id="memberUpdate" name="memberUpdate" value="회원정보 수정">
				<input type="button" value="예약현황">
				<input type="button" value="계정 비활성화">
			</div>
			
			<!-- 구분선 -->
			<div style="margin: 20px; width: 100%;">
				<hr style="border: 1 solid black;" />				
			</div>
			
			<c:if test="${mypage == null}">
				<h1>본인확인</h1>
				
				<!-- 구분선 -->
				<div style="margin: 20px; width: 100%;">
					<br>				
				</div>
				
				<form role="form" id="mypageForm" name="mypageForm">
					<div>
						<label for="m_pwd">패스워드</label>
						<input type="password" id="m_pwd" name="m_pwd" placeholder="패스워드">
						<input type="button" id="mypageBtn" name="mypageBtn" value="확인">
					</div>
				</form>
			</c:if>
			
			<!-- 하단 여백 -->
			<div style="width: 100%; height: 100px; margin-bottom: 50px;">
			</div>
		</div>
	</div>
	</section>
	<!-- End Reserve Section -->

	<!-- footer 삽입 -->
	<jsp:include page="/WEB-INF/views/client/main/footer.jsp"></jsp:include>
</body>
</html>