<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	pageContext.setAttribute("newLine", "\n");
%>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/detail.css">
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>	
<script
		src="${pageContext.request.contextPath}/resources/js/notiDetail.js"></script>	
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script type="text/javascript">
<!-- 허주한 -->
var prevNo = "${prevNo}";
var nextNo = "${nextNo}";

</script>
</head>
<body>

	<c:import url="/WEB-INF/views/include/header.jsp" />


	<!-- //////////////////////////////////// lab recruit content //////////////////////////////// -->
	<div class="container">
		<div class="row">

			<p class="lead">
				<span class="grad-recruit"> ${vo.slctnTitle }</span> <br>
				<span class="application-period"> 접수일 ${vo.slctnBeginDt } ~ ${vo.slctnEndDt }</span>
				<a id="prevBtn" class="btn btn-primary" href="${pageContext.servletContext.contextPath }/noti/detail?no=${prevNo}&tabnm=${param.tabnm}&page=${page}" >이전</a>
				<a id="nextBtn" class="btn btn-primary" href="${pageContext.servletContext.contextPath }/noti/detail?no=${nextNo}&tabnm=${param.tabnm}&page=${page}" >다음</a>
				<a id="listBtn" class="btn btn-primary" href="${pageContext.servletContext.contextPath }/noti/grad?page=${page}" >목록</a>
			</p>

			<hr>
			<!--/////////////////////////// main content ///////////////////////////////////// -->
			<div class=col-lg-8>
				<p class="lead">
					<span class="location"> ▣ 지원자격 </span>
				</p>
				<div>
					<p class="contents">
						${fn:replace(vo.suprtQualf, newLine,"<br>") }
					</p>
				</div>

				<hr>

				<p class="lead">
					<!--////// 전형 일정 //////-->
					<span class="location"> ▣ 전형방법 </span>
				</p>
				<div>
					<p class="contents">${vo.slsnMth }</p>

				</div>

				<hr>

				<p class="lead">
					<!--////// 전형 일정 //////-->
					<span class="location"> ▣ 전형일정 </span>
				</p>
				<div>
					<table class="table table-striped">
						<tbody>
							<tr>
								<td>원서접수</td>
								<td>${vo.slctnBeginDt } ~ ${vo.slctnEndDt }</td>
								<td>${vo.rcpMth }</td>
							</tr>
							<tr>
								<td>전형기간</td>
								<td>${vo.slsnBeginDd } ~ ${vo.slsnEndDd }</td>
								<td>${vo.slsnPlac }</td>
							</tr>
							<tr>
								<td>합격자 발표</td>
								<td>${vo.sccnAncmDd }</td>
								<td>${vo.sccnAncmMth }</td>
							</tr>
							<tr>
								<td>등록기간</td>
								<td>${vo.regstBeginDd } ~ ${vo.regstEndDd }</td>
								<td>${vo.regstMth }</td>
							</tr>
						</tbody>
					</table>

				</div>

				<hr>


			</div>
			<!--/////////////////////////// side floating menu//////////////////////////////// -->
			<div class="col-lg-4">

				<div class=well>
					<p class="lead">
						<span class="location"> 모집인원 </span>
					</p>
					<p>모집인원 : ${vo.slctnNops }</p>
				</div>

				<div class="well">
					<p class="lead">CONTACT</p>
					<p>담당자 : ${vo.chrgrNm }</p>
					<P>전화번호 : ${vo.chrgrTelNo }</P>
					<P>email : ${vo.chrgrEmail }</P>
				</div>
				<div class=well>
					<a href="${vo.slctnNotiUrl }"><div class="btn btn-primary web-volunteer" >입학안내 바로가기</div></a>
				</div>
			</div>
		</div>

		<div class="row">
			<!--///////////////////////// 지도 /////////////////////////-->
			<p class="lead">
				<i class="glyphicon glyphicon-map-marker"></i> 찾아오시는 길
				<!--///////////////////////// 대학원 주소 /////////////////////////-->
				<span class="location"> • ${vo.addr }</span> <input id="address"
					type="hidden" value="${vo.addr }">
			</p>
			<div id="map"></div>
			<script>
				function initMap() {
					var geocoder = new google.maps.Geocoder();
					var address = document.getElementById('address').value;
					setCenter(geocoder, address);
				}
				function setCenter(geocoder, address) {
					geocoder
							.geocode(
									{
										'address' : address
									},
									function(results, status) {
										if (status === google.maps.GeocoderStatus.OK) {
											var map = new google.maps.Map(
													document
															.getElementById('map'),
													{
														zoom : 16,
														scrollwheel : false,
														center : results[0].geometry.location
													});
											var marker = new google.maps.Marker(
													{
														position : results[0].geometry.location,
														map : map
													});
										} else {
											alert('Geocode was not successful for the following reason: '
													+ status);
											// return null;
										}
									});
				}
			</script>
		</div>
	</div>


	<c:import url="/WEB-INF/views/include/footer.jsp" />

	<script async defer
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCEl_BNACj7LCF2Hzs2Ft-9-XBf5Z4AZLQ&callback=initMap"></script>

</body>
</html>