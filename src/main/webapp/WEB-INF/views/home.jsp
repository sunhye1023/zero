<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>

<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/bootstrap.css">
<script
	src="${pageContext.request.contextPath }/resources/js/jquery-3.5.1.js"></script>

<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/style.css">
<script
	src="${pageContext.request.contextPath }/resources/js/bootstrap.js"></script>


</head>
<body>

	<%@ include file="include/header.jsp"%>




	<div class="dropdown">
		<button class="btn btn-primary dropdown-toggle" type="button"
			data-toggle="dropdown">
			Dropdown Example <span class="caret"></span>
		</button>
		<ul class="dropdown-menu">
			<li><a href="#">HTML</a></li>
			<li><a href="#">CSS</a></li>
			<li><a href="#">JavaScript</a></li>
		</ul>
	</div>

	<!-- <aside class="quick_area">
        <ul class="quick-list">
            <li>
                <h4>전화문의</h4>
                <a href="">010-1234-5678</a>
            </li>
            <li>
                <h4>카카오톡</h4>
                <a href="">1:1상담</a>
            </li>
            <li>
                <a href="">오시는길</a>
            </li>
        </ul>
    </aside> -->

	<section class="main">
		<div class="background-img">
			<video width="320" height="240" controls id="vid" autoplay="autoplay"
				muted="muted">
				<source src="img/videoplayback.mp4" type="video/mp4">
			</video>
		</div>
		<div class="bg-box"></div>
		<div class="main_text">
			<h2>열심히 일한 당신 떠나라~</h2>
			<p>스트레스 해소 및 힐링 프로젝트</p>
			<p>당신의 피로를 날려드립니다</p>
		</div>
	</section>

	<section class="recommend">
		<div class="container">
			<div class="row">
				<h2 class="sptitle">스페셜 오퍼</h2>
				<h2 class="sptitle2">S P E C I A L O F F E R S</h2>
				<div class="col-xs-12 col-sm-6 col-lg-4 contents-image">
					<div class="aside-inner">
						<ul class="clearfix">
							<li><img src="img/1.png" alt class="product">
								<h2 class="sptitle3">날씨에 따라</h2>
								<h3 class="sptitle4">"★★★☆☆ "</h3> <span class="red">2REVIEWS(S)</span><br>
							</li>
						</ul>
					</div>
				</div>
				<div class="col-xs-12 col-sm-6 col-lg-4 contents-image">
					<div class="aside-inner">
						<ul class="clearfix">
							<li><img src="img/1.png" alt class="product">
								<h2 class="sptitle3">성격에 따라</h2>
								<h3 class="sptitle4">"★★★☆☆ "</h3> <span class="red">2REVIEWS(S)</span><br>
							</li>
						</ul>
					</div>
				</div>
				<div class="col-xs-12 col-sm-6 col-lg-4 contents-image">
					<div class="aside-inner">
						<ul class="clearfix">
							<li><img src="img/1.png" alt class="product">
								<h2 class="sptitle3">맛을 따라</h2>
								<h3 class="sptitle4">"★★★☆☆ "</h3> <span class="red">2REVIEWS(S)</span><br>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="contents">
		<div class="container">
			<div class="row">
				<h2 class="sptitle">여행지 추천</h2>
				<h2 class="sptitle2">T O U R</h2>
				<div class="col-xs-12 col-sm-4 col-lg-4 contents-image">
					<div class="aside-inner">
						<ul class="clearfix">
							<li><img src="img/img_04.jpg" alt class="product">
								<h2>Product with Varients</h2>
								<h3>"★★★☆☆ "</h3> <span class="red">2REVIEWS(S)</span><br>
								"$59.00"
								<div class="hover-contents">
									<a href="">Jacket</a>
								</div></li>
						</ul>
					</div>
				</div>

				<div class="col-xs-12 col-sm-6 col-lg-4 contents-image">
					<div class="aside-inner">
						<ul class="clearfix">
							<li><img src="img/img_04.jpg" alt class="product">
								<h2>Product with Varients</h2>
								<h3>"★★★☆☆ "</h3> <span class="red">2REVIEWS(S)</span><br>
								"$59.00"
								<div class="hover-contents">
									<a href="">Jacket</a>
								</div></li>
						</ul>
					</div>
				</div>

				<div class="col-xs-12 col-sm-6 col-lg-4 contents-image">
					<div class="aside-inner">
						<ul class="clearfix">
							<li><img src="img/img_04.jpg" alt class="product">
								<h2>Product with Varients</h2>
								<h3>"★★★☆☆ "</h3> <span class="red">2REVIEWS(S)</span><br>
								"$59.00"
								<div class="hover-contents">
									<a href="">Jacket</a>
								</div></li>
						</ul>
					</div>
				</div>

				<div class="col-xs-12 col-sm-6 col-lg-4 contents-image">
					<div class="aside-inner">
						<ul class="clearfix">
							<li><img src="img/img_04.jpg" alt class="product">
								<h2>Product with Varients</h2>
								<h3>"★★★☆☆ "</h3> <span class="red">2REVIEWS(S)</span><br>
								"$59.00"
								<div class="hover-contents">
									<a href="">Jacket</a>
								</div></li>
						</ul>
					</div>
				</div>

				<div class="col-xs-12 col-sm-6 col-lg-4 contents-image">
					<div class="aside-inner">
						<ul class="clearfix">
							<li><img src="img/img_05.jpg" alt class="product">
								<h2>Product with Varients</h2>
								<h3>"★★★☆☆ "</h3> <span class="red">2REVIEWS(S)</span><br>
								"$59.00"
								<div class="hover-contents">
									<a href="">Jacket</a>
								</div></li>
						</ul>
					</div>
				</div>

				<div class="col-xs-12 col-sm-6 col-lg-4 contents-image">
					<div class="aside-inner">
						<ul class="clearfix">
							<li><img src="img/img_06.jpg" alt class="product">
								<h2>Product with Varients</h2>
								<h3>"★★★☆☆ "</h3> <span class="red">2REVIEWS(S)</span><br>
								"$59.00"
								<div class="hover-contents">
									<a href="">Jacket</a>
								</div></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section></section>



	<%@ include file="include/footer.jsp"%>
	<%@ include file="users/user_modal.jsp"%>


	<script>
		$("#loginmodal").click(function() {
			$("#modal-login").modal("show");
		});

		$("#registmodal").click(function() {
			$("#modal-regist").modal("show");
		});
	</script>

</body>
</html>