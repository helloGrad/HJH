<!-- 

허주한

 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/list.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>


<title>Insert title here</title>

</head>
<body>

	<c:import url="/WEB-INF/views/include/header.jsp" />

	<div class="container">
		<!-- ///// filter (대분류) //////-->
		<div class="row">
			<div class="col-lg-4 centering">
				<button class="tablinks" onclick="openCity(event, 'noti')"
					id="defaultOpen">모집공고</button>
				<button class="tablinks" onclick="openCity(event, 'grad')">대학원</button>
				<button class="tablinks" onclick="openCity(event, 'lab')">연구실</button>
			</div>
		</div>

		<hr class="nav-line">

		<div id="noti" class="col-lg-8">
			<h2>모집공고</h2>
			<form class="login-form" id="login-form" name="loginform" method="post" action="${pageContext.servletContext.contextPath }/admin/noti">
				<div class="form-group">
					<label for="email">Email:</label> <input type="email"
						class="form-control" id="email" name="iden">
				</div>
				<div class="form-group">
					<label for="pwd">Password:</label> <input type="password"
						class="form-control" id="pwd" name="pw">
				</div>
				<button type="submit" class="btn btn-primary btn-lg">입력</button>
			</form>
		</div>

		<div id="grad" class="col-lg-8">
			<h2>대학원</h2>
			<form class="login-form" id="login-form" name="loginform"method="post" action="${pageContext.servletContext.contextPath }/admin/organz">
				<input type="hidden" id="tabnm" name="tabnm" value="grad">
				
				<div class="form-group">
				
					<label >기관구분:</label>
					<select id="hmnbrdDstnct" name="hmnbrdDstnct">
  						<option value="국내">국내</option>
  						<option value="국외">국외</option>
					</select>
					<select id="orgnzDstnct" name="orgnzDstnct">
  						<option value="대학교">대학교</option>
  						<option value="대학원">대학원</option>
  						<option value="학과">학과</option>
					</select>
					<br>
					<br>
					
					<label >기관명:</label> <input type="text" class="form-control" id="orgnzNm" name="orgnzNm">
					<label >기관영문명:</label> <input type="text" class="form-control" id="engOrgnzNm" name="engOrgnzNm">
					<label >홈페이지주소:</label> <input type="text" class="form-control" id="hmpageUrl" name="hmpageUrl">
					<label >전화번호:</label> <input type="text" class="form-control" id="telNo" name="telNo">
					<label >팩스번호:</label> <input type="text" class="form-control" id="faxNo" name="faxNo">
					<label >주소:</label> <input type="text" class="form-control" id="addr" name="addr">
					<label >상세주소:</label> <input type="text" class="form-control" id="detailAddr" name="detailAddr">
					<label >부모번호:</label> <input type="text" class="form-control" id="prntsOrgnzStr" name="prntsOrgnzStr">
					<label >텍스트:</label> <textarea rows="4" cols="50"></textarea>
				</div>
				
				<button type="submit" class="btn btn-primary btn-lg">입력</button>
			</form>
		</div>

		<div id="lab" class="col-lg-8">
			<h2>연구실</h2>
			<form class="login-form" id="login-form" name="loginform"
				method="post"
				action="${pageContext.servletContext.contextPath }/admin/organz">
				<div class="form-group">
				<input type="hidden" id="tabnm" name="tabnm" value="lab">
					<label for="email">Email:</label> <input type="email"
						class="form-control" id="email" name="iden">
				</div>
				<div class="form-group">
					<label for="pwd">Password:</label> <input type="password"
						class="form-control" id="pwd" name="pw">
				</div>
				<button type="submit" class="btn btn-primary btn-lg">입력</button>
			</form>
		</div>
	</div>
	</div>

	<!--footer-->
	<c:import url="/WEB-INF/views/include/footer.jsp" />
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/bootstrap.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/list.js"></script>

</body>
</html>