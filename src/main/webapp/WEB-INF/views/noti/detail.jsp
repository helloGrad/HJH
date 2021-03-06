<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
pageContext.setAttribute("newLine", "\n");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
		href="${pageContext.request.contextPath}/resources/css/detail.css">




</head>
<body>
	<c:import url="/WEB-INF/views/include/header.jsp" />

	<div class="container">

		<div class="row">
			<!-- Blog `bar Widgets Column -->
			<div class="col-xs-3">
				<div class=" col-sm-2 side" id="side">

					<!--////////////////////// 연구실 요약 ////////////////////////-->
					<div class="well">
						<h4>연구실 정보</h4>
						<div class="row">
							<div class="col-lg-12">
								<ul class="list-unstyled">
									<li><a href="#">Category Name</a></li>
									<li><a href="#">Category Name</a></li>
									<li><a href="#">Category Name</a></li>
									<li><a href="#">Category Name</a></li>
								</ul>
							</div>

						</div>
						<!-- /.row -->


					</div>

					<div class="well">
						<p>
							<i class="glyphicon glyphicon-heart-empty"></i> 즐겨찾기
						</p>
						<p>100명이 이 연구실을 좋아합니다.</p>
					</div>

					<!-- Side Widget Well -->

				</div>
			</div>

			<!--//////////////////////////// 연구실 상세 소개 페이지 /////////////////////////-->
			<div class="col-xs-8">

				<!--  //////////////////// 연구실 ////////////////////// -->
				<h1>${vo.orgnzNm } / ${vo.engOrgnzNm }</h1>
				<input id="orgNo" type=hidden value=${vo.orgnzNo }>

				<!-- ///////////////////// 연구실 명 /////////////////////// -->
				<p class="lead">
					by <a href="#"> DB Lab </a> <i class="glyphicon glyphicon-ok-sign"></i>
				</p>
				<p>
					<!--/////////////////////// 업데이트 일시 /////////////////// -->
					<span class="glyphicon glyphicon-time"></span> August 24, 2013 at
					9:00 PM에 업데이트 됨
				</p>

				<hr>


				<!-- //////////////////////// 연구실 소개  ////////////////////////-->
				<p class="lead">
					<i class="glyphicon glyphicon-comment"></i> 연구실 소개
				</p>
				<p>${vo.labIntro }</p>


				<hr>
				
				<!--/////////////////////// 논문실적 /////////////////// -->
				<p class="lead">
					<i class="glyphicon glyphicon-book"></i> 논문
					<input  id="paperBtn" name = "paper" type="button" value="+"/>
				</p>
				
				
				<div id="paperShowDiv">
				
				<c:forEach items="${list }" var="list" varStatus="status">
					<c:if test="${list.resrchDstinct == '논문' }">
							<p>${list.resrchYycl }</p>
							<p>${fn:replace(list.resrchText, newLine,"<br>") }</p>
					</c:if>
				</c:forEach>
				
				</div>
				
				<div id=paper style="display: none">
				
				</div>
				
				<hr>
				
				<!--/////////////////////// 프로젝트 실적 /////////////////// -->
				<p class="lead">
					<i class="glyphicon glyphicon-book"></i> 프로젝트
					<input  id="projBtn" name = "project" type="button" value="+"/>
				</p>
				<div id="projShowDiv">
				
				<c:forEach items="${list }" var="list" varStatus="status">
					<c:if test="${list.resrchDstinct == '프로젝트' }">
							<p>${list.resrchYycl }</p>
							<p>${fn:replace(list.resrchText, newLine,"<br>") }</p>
					</c:if>
				</c:forEach>
				
				</div>
				
				<div id=project style="display: none">
				
				</div>
				
				<hr>
				
				<!--/////////////////////// 특허 실적 /////////////////// -->
				<p class="lead">
					<i class="glyphicon glyphicon-book"></i> 특허
					<input  id="patentBtn" name = "patent" type="button" value="+"/>
				</p>
				<div id="patentShowDiv">
				
				<c:forEach items="${list }" var="list" varStatus="status">
					<c:if test="${list.resrchDstinct == '특허' }">
							<p>${list.resrchYycl }</p>
							<p>${fn:replace(list.resrchText, newLine,"<br>") }</p>
					</c:if>
				</c:forEach>
				
				</div>
				
				<div id=patent style="display: none">
				
				</div>
				
				<hr>
				
				<!--/////////////////////// 특허 실적 /////////////////// -->
				<p class="lead">
					<i class="glyphicon glyphicon-book"></i> 세미나
					<input  id="seminarBtn" name = "seminar" type="button" value="+"/>
				</p>
				<div id="semiShowDiv">
				
				<c:forEach items="${list }" var="list" varStatus="status">
					<c:if test="${list.resrchDstinct == '세미나' }">
							<p>${list.resrchYycl }</p>
							<p>${fn:replace(list.resrchText, newLine,"<br>") }</p>
					</c:if>
				</c:forEach>
				
				</div>
				
				<div id=seminar style="display: none">
				
				</div>
				
				<hr>
				
				<!--/////////////////////// 학회 실적 /////////////////// -->
				<p class="lead">
					<i class="glyphicon glyphicon-book"></i> 학회
					<input  id="academyBtn" name = "academy" type="button" value="+"/>
				</p>
				<div id="academyShowDiv">
				
				<c:forEach items="${list }" var="list" varStatus="status">
					<c:if test="${list.resrchDstinct == '학회' }">
							<p>${list.resrchYycl }</p>
							<p>${fn:replace(list.resrchText, newLine,"<br>") }</p>
					</c:if>
				</c:forEach>
				
				</div>
				
				<div id=academy style="display: none">
				
				</div>
				
				<hr>


				<p class="lead">
					<i class="glyphicon glyphicon-check"></i> 지원 내역
				</p>
				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Inventore,
				perspiciatis adipisci accusamus laudantium odit aliquam repellat
				tempore quos aspernatur vero.

				<hr>


				<!--///////////////////////// 지도 /////////////////////////-->
				<p class="lead">
					<i class="glyphicon glyphicon-map-marker"></i> 장소 <span
						class="location"> • 창원대학교 55호관 506호</span> <input id="address"
						type="hidden" value="경남 창원 창원대학교 55호관">
				</p>

				<div id="map"></div>
				<script>
                    function initMap() {

                        var geocoder = new google.maps.Geocoder();
                        var address = document.getElementById('address').value;
                        setCenter(geocoder, address);
                    }

                    function setCenter(geocoder, address) {
                        geocoder.geocode({
                            'address': address
                        }, function(results, status) {
                            if (status === google.maps.GeocoderStatus.OK) {
                                var map = new google.maps.Map(document.getElementById('map'), {
                                    zoom: 14,
                                    center: results[0].geometry.location
                                });
                                var marker = new google.maps.Marker({
                                    position: results[0].geometry.location,
                                    map: map
                                });
                            } else {
                                alert('Geocode was not successful for the following reason: ' + status);
                                // return null;
                            }
                        });
                    }
                </script>
				

				<hr>

				<p class="lead">QnA</p>

				<!-- Comments Form -->
				<div class="well">
					<h4>Leave a Comment:</h4>
					<form role="form">
						<div class="form-group">
							<textarea class="form-control" rows="3"></textarea>
						</div>
						<button type="submit" class="btn btn-primary">Submit</button>
					</form>
				</div>


				<hr>


				<!-- Posted Comments -->

				<!-- Comment -->
				<div class="media">
					<a class="pull-left" href="#"> <img class="media-object"
						src="http://placehold.it/64x64" alt="">
					</a>
					<div class="media-body">
						<h4 class="media-heading">
							Start Bootstrap <small>August 25, 2014 at 9:30 PM</small>
						</h4>
						Cras sit amet nibh libero, in gravida nulla. Nulla vel metus
						scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum
						in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac
						nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
					</div>
				</div>

				<!-- Comment -->
				<div class="media">
					<a class="pull-left" href="#"> <img class="media-object"
						src="http://placehold.it/64x64" alt="">
					</a>
					<div class="media-body">
						<h4 class="media-heading">
							Start Bootstrap <small>August 25, 2014 at 9:30 PM</small>
						</h4>
						Cras sit amet nibh libero, in gravida nulla. Nulla vel metus
						scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum
						in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac
						nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
						<!-- Nested Comment -->
						<div class="media">
							<a class="pull-left" href="#"> <img class="media-object"
								src="http://placehold.it/64x64" alt="">
							</a>
							<div class="media-body">
								<h4 class="media-heading">
									Nested Start Bootstrap <small>August 25, 2014 at 9:30
										PM</small>
								</h4>
								Cras sit amet nibh libero, in gravida nulla. Nulla vel metus
								scelerisque ante sollicitudin commodo. Cras purus odio,
								vestibulum in vulputate at, tempus viverra turpis. Fusce
								condimentum nunc ac nisi vulputate fringilla. Donec lacinia
								congue felis in faucibus.
							</div>
						</div>
						<!-- End Nested Comment -->
					</div>
				</div>

			</div>



		</div>
		<!-- /.row -->

		<hr>

		<div class="col-lg-12">
			<h3 class="page-header">
				데이터베이스을(를) 다루는 연구실
				<button type="button" class="more">More</button>
			</h3>
		</div>

		<div class="col-sm-3 col-xs-5">
			<a href="#"> <img class="img-responsive portfolio-item"
				src="http://placehold.it/300x400" alt="">
			</a>
		</div>

		<div class="col-sm-3 col-xs-5">
			<a href="#"> <img class="img-responsive portfolio-item"
				src="http://placehold.it/600x800" alt="">
			</a>
		</div>

		<div class="col-sm-3 col-xs-5">
			<a href="#"> <img class="img-responsive portfolio-item"
				src="http://placehold.it/600x800" alt="">
			</a>
		</div>

		<div class="col-sm-3 col-xs-5">
			<a href="#"> <img class="img-responsive portfolio-item"
				src="http://placehold.it/600x800" alt="">
			</a>
		</div>


	</div>
	<!-- /.container -->


	<!--//////////////////////// footer ////////////////////////////-->
	<c:import url="/WEB-INF/views/include/footer.jsp" />
	<script	src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/detail.js"></script>
	<script async defer 
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCEl_BNACj7LCF2Hzs2Ft-9-XBf5Z4AZLQ&callback=initMap"></script>
	
</body>
</html>