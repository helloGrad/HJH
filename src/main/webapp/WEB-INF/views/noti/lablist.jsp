<!-- 허주한 -->
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
<script
	src="${pageContext.request.contextPath}/resources/js/notiList.js"></script>
<title>Insert title here</title>
<script type="text/javascript">

var p = "${param.page}";
var listCount = "${listCount}";
var startPage = "${pageVo.startPage}"
var endPage = "${pageVo.endPage}";
var totalPage = "${pageVo.totalPage}";

</script>


</head>
<body>

	<c:import url="/WEB-INF/views/include/header.jsp" />

	<div class="container">

		<div class="row">
			<h3>연구실 공고 페이지</h3>
			<div class="col-lg-4 centering">

				<a id="gradBtn" class="btn btn-primary"
					href="${pageContext.servletContext.contextPath }/noti/grad">대학원
					더보기</a> <a id="labBtn" class="btn btn-primary"
					href="${pageContext.servletContext.contextPath }/noti/lab">연구실
					더보기</a>
			</div>
		</div>
		<hr class="nav-line">

		<!-- ////// filter ///////-->
		<div class="row">
			<div class="col-lg-4">
				분야 <a href="*" class="remove-btn">EDIT</a>

				<hr>
				<div class="well well-sm">
					<i class="glyphicon glyphicon-search"></i>검색
				</div>
				<div class="well well-sm">
					<i class="glyphicon glyphicon-tag"></i> 국내 (전체) <a href=""> <i
						class="glyphicon glyphicon-remove remove-btn"></i></a>
				</div>
				<div class="well well-sm">
					<i class="glyphicon glyphicon-tag"></i> 데이터베이스 <a href=""> <i
						class="glyphicon glyphicon-remove remove-btn"></i></a>
				</div>
				<div class="well well-sm">
					<i class="glyphicon glyphicon-tag"></i> 인공지능 <a href=""> <i
						class="glyphicon glyphicon-remove remove-btn"></i></a>
				</div>
				<div class="well well-sm">
					<i class="glyphicon glyphicon-tag"></i> 빅 데이터 <a href=""> <i
						class="glyphicon glyphicon-remove remove-btn"></i></a>
				</div>
				<div class="well well-sm">
					<i class="glyphicon glyphicon-tag"></i> 컴퓨터 <a href=""> <i
						class="glyphicon glyphicon-remove remove-btn"></i></a>
				</div>
			</div>

			<div id="gradList" class="col-lg-8">
				<c:forEach items="${notiList }" var="list" varStatus="status">
					<div class="col-md-12">
						<h4>
							<a
								href="${pageContext.servletContext.contextPath }/noti/detail?no=${list.slctnNotiNo}&tabnm=${list.slctnNotiDstnct}&page=${page}">${list.slctnTitle }</a>
						</h4>
						<hr>
					</div>
				</c:forEach>

			</div>
			
			<div id="labPageList" class="col-lg-8">
				
				<c:choose>
					<c:when test="${page<10 }">
						<a id="prevTBtn" class="btn btn-primary disabled" href="${pageContext.servletContext.contextPath }/noti/lab?page=${pageVo.startPage-10 }" >&lt;&lt;</a>	
					</c:when>
					<c:otherwise>
						<a id="prevTBtn" class="btn btn-primary" href="${pageContext.servletContext.contextPath }/noti/lab?page=${pageVo.startPage-10 }" >&lt;&lt;</a>
					</c:otherwise>
				</c:choose>
				
				
				<c:choose>
					<c:when test="${page=='1'||page=='' }">
						<a id="prevBtn" class="btn btn-primary disabled" href="${pageContext.servletContext.contextPath }/noti/lab?page=${page-1 }" >&lt;</a>
					</c:when>
					
					<c:otherwise>
						<a id="prevBtn" class="btn btn-primary" href="${pageContext.servletContext.contextPath }/noti/lab?page=${page-1 }" >&lt;</a>
					</c:otherwise>
				</c:choose>
				
				
				
									
					<c:forEach begin="${pageVo.startPage }" end="${pageVo.endPage }" var="i" step="1">
					
						<c:choose>
							<c:when test="${page==i }">
								<a id="gradPageBtn${i }" class="btn btn-primary disabled" href="${pageContext.servletContext.contextPath }/noti/lab?page=${i }" >${i }</a>
							</c:when>
							
							<c:otherwise>
								<a id="gradPageBtn${i }" class="btn btn-primary" href="${pageContext.servletContext.contextPath }/noti/lab?page=${i }" >${i }</a>
							</c:otherwise>
						</c:choose>
					
					</c:forEach>
				
				<c:choose>
					<c:when test="${page==pageVo.totalPage }">
						<a id="nextBtn" class="btn btn-primary disabled" href="${pageContext.servletContext.contextPath }/noti/lab?page=${page+1 }" >&gt;</a>
					</c:when>
					<c:otherwise>
						<a id="nextBtn" class="btn btn-primary" href="${pageContext.servletContext.contextPath }/noti/lab?page=${page+1 }" >&gt;</a>
					</c:otherwise>
				</c:choose>
				
				<c:choose>
					<c:when test="${pageVo.endPage >=  pageVo.totalPage}">
						<a id="nextTBtn" class="btn btn-primary disabled" href="${pageContext.servletContext.contextPath }/noti/lab?page=${pageVo.startPage+10 }" >&gt;&gt;</a>
					</c:when>
					<c:otherwise>
						<a id="nextTBtn" class="btn btn-primary" href="${pageContext.servletContext.contextPath }/noti/lab?page=${pageVo.startPage+10 }" >&gt;&gt;</a>
					
					</c:otherwise>
				</c:choose>
				
				
				
			</div>


		</div>
	</div>

	<!--footer-->
	<c:import url="/WEB-INF/views/include/footer.jsp" />
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/bootstrap.js"></script>

</body>
</html>