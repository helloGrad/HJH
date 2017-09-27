<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="google-signin-client_id"
	content="31840955156-0oh8u23d3t24v4rguka78knp12vo9jm4.apps.googleusercontent.com">

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://apis.google.com/js/platform.js" async defer></script>


<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
<link href="${pageContext.request.contextPath}/resources/css/higrad-signup.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/fontello-embedded.css" rel="stylesheet">	
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">

<!--//////////////////////// footer End ////////////////////////////-->

<link href="${pageContext.request.contextPath}/resources/css/login.css" rel="stylesheet">





    <style>
    	#anchor {
    	padding-top: 100px;
    	margin-top: -50px;
}
        body {
            padding-top: 11em;
        }

        /*more 버튼*/
        .more {
            float: right;
            width: 5em;
            font-size: 0.5em;
            margin-top: 1.5em;
        }

        @media screen and (max-width: 768px) {
            .dropdown-menu-large {
                margin-left: 0;
                margin-right: 0;
            }

            .dropdown-menu-large > li {
                margin-bottom: 30px;
            }

            .dropdown-menu-large > li:last-child {
                margin-bottom: 0;
            }

            .dropdown-menu-large {
                padding: 3px 15px !important;
            }

            .dropdown-menu-large {
                margin-left: 1em;
                margin-right: 16px;
                padding: 20px 0px;
            }
        }

        @media screen and (min-width: 768px) {
            .glyphicon-education {
                font-size: 6em;
            }

            .glyphicon-education {
                font-size: 6em;
            }

            .dropdown-menu-large {
                margin-left: 25em;
                margin-right: 16px;
                padding: 20px 0px;
            }
        }

        .dropdown-large {
            position: static !important;
        }

        .dropdown-menu-large > li > ul {
            padding: 0;
            margin: 0;
        }

        .dropdown-menu-large > li > ul > li {
            list-style: none;
        }

        .dropdown-menu-large > li > ul > li > a {
            display: block;
            padding: 3px 20px;
            clear: both;
            font-weight: normal;
            line-height: 1.428571429;
            color: #333333;
            white-space: normal;
        }

        .dropdown-menu-large > li ul > li > a:hover,
        .dropdown-menu-large > li ul > li > a:focus {
            text-decoration: none;
            color: #5bc0de;
            /*background-color: #f5f5f5;*/
        }

        .dropdown-menu-large .dropdown-header {
            color: #428bca;
            font-size: 18px;
        }
        .symposium {
            height : 15em;
        }
        
        
        .jumbotron {
	position: relative;
	z-index: 1;
	height: 25em;
    margin-bottom: 0.1em;
    text-align: center;
    background-size: cover;
}
.user-info {
	color : #FFFFFF;
    padding-top: 4em;
}
.user-info-box {
	background-color : rgba(78,18,201,0.8) !important;
    height : 20em;
}
.user-info-list{
	float: left;
    margin-left: 1em;
    color : #FFFFFF;
    font-size: 1.2em;
    list-style-type : none;
}
.user-info-weight {
    font-weight: 100;
    margin-left: 0.5em;
}
.user-info-list-box {
    border: 1px solid #f0f0f0;
    width: 100%;
     height: 100%;
}
.navbar {
	background-color: rgba(255, 255, 255, 0.95);
}

.navbar-qna {
	font-weight: 400;
	margin-top: -5px;
	margin-bottom: -5px;
	margin-left: -1em;
	font-size: 1.5vmin;
	letter-spacing: 4px;
	float: left;
}

.navbar-nav li a:hover {
	color: #1abc9c !important;
	background-color: white;
}

.grad-background-color {
	background-color: rgb(247, 245, 242);
}

/* nav-bar End */
body {
	padding-top: 5em;
}

.grad-banner {
	box-shadow: 5px 10px 10px rgba(102, 102, 255, 0.3), -1px -1px 10px
		rgba(136, 176, 75, 0.3);
	margin-bottom: 1.5em;
	background-color: white;
}

.grad-banner:hover {
	box-shadow: 5px 10px 30px rgba(102, 102, 255, 0.5), -1px -1px 30px
		rgba(136, 176, 75, 0.5);
	margin-bottom: 1.5em;
}

.lab-banner {
	box-shadow: 5px 10px 10px rgba(51, 102, 255, 0.3), -1px -1px 10px
		rgba(75, 0, 130, 0.3);
	margin-bottom: 1.5em;
	background-color: white;
}

.lab-banner:hover {
	box-shadow: 5px 10px 30px rgba(51, 102, 255, 0.5), -1px -1px 30px
		rgba(75, 0, 130, 0.5);
	margin-bottom: 1.5em;
}

.conference-banner {
	box-shadow: 5px 10px 10px rgba(51, 102, 255, 0.3), -1px -1px 10px
		rgba(153, 0, 153, 0.3);
	margin-bottom: 1.5em;
	background-color: white;
}

.conference-banner:hover {
	box-shadow: 5px 10px 30px rgba(51, 102, 255, 0.5), -1px -1px 30px
		rgba(153, 0, 153, 0.5);
	margin-bottom: 1.5em;
	background-color: white;
}

.qna-banner {
	box-shadow: 5px 10px 10px rgba(0, 0, 51, 0.3), -1px -1px 10px
		rgba(0, 0, 51, 0.3);
	margin-bottom: 1.5em;
	background-color: white;
}

.qna-banner:hover {
	box-shadow: 5px 10px 30px rgba(0, 0, 51, 0.5), -1px -1px 30px
		rgba(0, 0, 51, 0.5);
	margin-bottom: 1.5em;
}

.content-answers {
	height: 3.5em;
	text-overflow: ellipsis;
	overflow: hidden;
	white-space: normal;
}

.grad-banner-our {
	box-shadow: 5px 10px 10px rgba(0, 0, 0, 0.15), -1px -1px 10px
		rgba(0, 0, 0, 0.15);
	margin-bottom: 1.5em;
	background-color: white;
}

    </style>

    <script>
    	
    var shiftWindow = function() { scrollBy(0, -50) };
    window.addEventListener("hashchange", shiftWindow);
    function load() { if (window.location.hash) shiftWindow(); }
    	
        $(document).ready(function (e) {
            $(".degree").click(function () {
                $(this).toggleClass("check");
            });
        });

        $(window).resize(function () {
            var windowWidth = $(window).width();
            console.log(windowWidth);
            if (window.innerWidth <= 768) {
                $(".quick-menu").removeClass("table-bordered").addClass("thumbnail");
            } else {
                $(".quick-menu").removeClass("thumbnail");

            }
        });
    </script>
</head>
<body>

<c:import url="/WEB-INF/views/include/header.jsp" />


<!--
    main contents
    page
-->
<div class="container">

    <div class="row">
        <div class="col-xs-12 col-sm-12 col-lg-12">
            <!--
                contents title
            -->
            <h3>
                <a href="${pageContext.request.contextPath}/user/mypage">
                    You might interest
                    <button type="button" class="more">More ></button>
                </a>
            </h3>

            <hr>

            <div class="col-xs-12 col-sm-4 col-lg-4">
					<c:forEach items="${myBoardList }" var="myBoardList" varStatus="status">
						<c:if test="${status.index%3==0 }">
						
							<c:set var="name" value="${myBoardList.slctnNotiDstnct}" />
							<c:set var="leng" value="${fn:length(name)}" />
							<c:if test="${myBoardList.slctnNotiDstnct == '대학원' && myBoardList.pchrgYn=='Y'}">
							
								<div class="grad-banner w3-card w3-round-large" onclick="location.href='${pageContext.servletContext.contextPath }/noti/detail?no=${myBoardList.slctnNotiNo}&tabnm=${myBoardList.slctnNotiDstnct}'">
									<div class="w3-padding w3-text-grey w3-small" style="margin-bottom: -1.5em;">${myBoardList.year}년 ${myBoardList.slctnSemstr}</div>
									<img src="${pageContext.request.contextPath }${myBoardList.storgPath }" alt="대학교 로고 이미지" style="width: 100%; padding: 1em 1em 0 1em;">
									<div class="w3-container w3-center">
										<h4><strong>${myBoardList.lab }</strong></h4>
										<p style="font-size: 1.8vmin;">
											<span class="grad-target">${myBoardList.slctnTitle }</span>
										</p>
									</div>
									<div class="noti-period">
                        				<div class="w3-light-grey w3-tiny">
		                            	<c:if test="${myBoardList.percent<=0 }">
		                            		<div class="w3-container" style="width: 0%; height: 1px;"></div>
	                            		</c:if>
	                            		<c:if test="${myBoardList.percent>0 }">
		                            		<div class="w3-container w3-black" style="width: ${myBoardList.percent }%; height: 1px;"></div>
	                            		</c:if>
	                            		</div>
                        			</div>
										<div class="w3-padding">
										<span class="noti-hh">
										<i class="glyphicon glyphicon-paperclip"></i>
										</span> 
										<span class="noti-endtext w3-tag w3-round-large w3-light-grey w3-text-blue" style="float: right;"> 
											<c:if test="${myBoardList.percent<=0 }">
												모집 예정
											</c:if>
											<c:if test="${myBoardList.percent>0 }">
												D-${myBoardList.dday }
											</c:if>
										</span>
										</div>
									</div>

								</c:if>

					<c:if test="${myBoardList.slctnNotiDstnct == '대학원' && myBoardList.pchrgYn=='N'}">
					
						<div class="grad-banner-our w3-card w3-round-large" onclick="location.href='${pageContext.servletContext.contextPath }/noti/detail?no=${myBoardList.slctnNotiNo}&tabnm=${myBoardList.slctnNotiDstnct}'">
							<div class="w3-padding w3-text-grey w3-small" style="margin-bottom: -1.5em;">${myBoardList.year }년 ${myBoardList.slctnSemstr}</div>
							<div class="w3-container w3-center w3-padding" style="margin-bottom: -1em;">
								<h4 class="w3-padding w3-round-large" style="margin-bottom: 0em;">
									<strong style="color: ${myBoardList.symbolColorNm };">${myBoardList.major }</strong>
									<strong>${myBoardList.lab }</strong>
								</h4>
								<p style="font-size: 1.8vmin;">${myBoardList.slctnTitle }</p>
							</div>
							<div class="w3-padding">
								<span class="noti-hh">
									<i class="glyphicon glyphicon-paperclip"></i>
								</span>
								<span class="noti-endtext w3-tag w3-round-large w3-light-grey w3-text-blue"	style="float: right;">
									<c:if test="${myBoardList.percent<=0 }">
										모집 예정
									</c:if>
									<c:if test="${myBoardList.percent>0 }">
										D-${myBoardList.dday }
									</c:if>
								</span>
							</div>
						</div>
						
					</c:if>


					<c:if test="${myBoardList.slctnNotiDstnct == '연구실' && myBoardList.pchrgYn=='Y'}">
									
						<div class="lab-banner w3-card w3-round-large" onclick="location.href='${pageContext.servletContext.contextPath }/noti/detail?no=${myBoardList.slctnNotiNo}&tabnm=${myBoardList.slctnNotiDstnct}'">
							<c:if test="${myBoardList.bk21EorgnzSuprtYn=='Y' }">
								<div class="w3-small w3-padding  "style="margin-bottom: -1.5em; height: 2.7em">
	                        		<span class="w3-red " style="padding-right: 2px; padding-left: 10px; margin-right: -5px">BK</span>
    	                    		<span class="w3-blue " style="padding-right: 5px; padding-left: 0px;">21+</span>
        	            		</div>						
						
							</c:if>
                    	<img src="${pageContext.request.contextPath }${myBoardList.storgPath }" alt="대학교 로고 이미지" style="width:100%; padding: 1em 1em 0 1em;">
                    	<div class="w3-container w3-center">
                        	<h4 style="font-size: 1.8vmin;"><strong>${myBoardList.graduate }</strong></h4>
                        	<h4 style="font-size: 1.8vmin;"><strong>${myBoardList.lab }</strong></h4>
                        	<p style="font-size: 1.8vmin;"><span class="grad-target">${myBoardList.slctnTitle }</span></p>
                    	</div>
                    	<div class="research-field w3-padding text-center">
                    		<c:forEach items="${myBoardList.researchList }" var="resList"	varStatus="status">
								<span class="w3-tag w3-black w3-tiny ">${resList.cdNm }</span>
							</c:forEach>
                    	</div>
                    	<div class="w3-padding">
                        	<span class="noti-hh"><i class="glyphicon glyphicon-paperclip"></i></span>
                        	<span class="noti-endtext w3-tag w3-round-large w3-light-grey w3-text-blue" style="float :right;">
                        		<c:if test="${myBoardList.percent<=0 }">
	                        		모집 예정
	                        	</c:if>
								<c:if test="${myBoardList.percent>0 }">
	                        		D-${myBoardList.dday }
	                        	</c:if>
	                        </span>
                    	</div>
                		</div>

					</c:if>

					<c:if test="${myBoardList.slctnNotiDstnct == '연구실' && myBoardList.pchrgYn=='N'}">
									
						<div class="grad-banner-our w3-card w3-round-large" onclick="location.href='${pageContext.servletContext.contextPath }/noti/detail?no=${myBoardList.slctnNotiNo}&tabnm=${myBoardList.slctnNotiDstnct}'">
                    		<div class="w3-padding w3-text-grey w3-small" style="margin-bottom: -1.5em;">${myBoardList.year }년 ${myBoardList.slctnSemstr }</div>
                    		<div class="w3-container w3-center w3-padding" style="margin-bottom: -1em;">
                        		<h5 class="w3-padding" style="margin-bottom: 0em;"><strong style="color: ${myBoardList.symbolColorNm };">${myBoardList.university } </strong></h5>
                        		<h5><strong>${myBoardList.graduate } ${myBoardList.lab }</strong></h5>
                        		<p style="font-size: 1.8vmin;">${myBoardList.slctnTitle }</p>
                    		</div>
                    		<div class="w3-padding">
                        		<span class="noti-hh"><i class="glyphicon glyphicon-paperclip"></i></span>
                        		<c:if test="${myBoardList.slctnEndDt == '9999-12-31 00:00:00.0' }">
                        			<span class="noti-endtext w3-tag w3-round-large w3-light-grey w3-text-blue" style="float :right;">상시모집</span>
								</c:if>

								<c:if test="${myBoardList.slctnEndDt != '9999-12-31 00:00:00.0' }">
									<c:if test="${myBoardList.percent<=0 }">
										<span class="noti-endtext w3-tag w3-round-large w3-light-grey w3-text-blue" style="float :right;">모집예정</span>
									</c:if>
									<c:if test="${myBoardList.percent>0 }">
										<span class="noti-endtext w3-tag w3-round-large w3-light-grey w3-text-blue" style="float :right;">D-${myBoardList.dday }</span>
									</c:if>
								</c:if>
                    		</div>
                		</div>
					</c:if>
					
					<c:if test="${'게시판' == fn:substring(name,leng-3,leng)}">
					<div class="qna-banner w3-card w3-round-large">
                    	<div class="w3-small w3-padding ">
                    		<c:if test="${myBoardList.wrtbtDstnct =='일반게시판' }">
                    			<span class="">Ordinary</span>
                    		</c:if>
                        	<c:if test="${myBoardList.wrtbtDstnct =='상담게시판' }">
                    			<span class="">Question</span>
                    		</c:if>
                    	</div>
                    	<div class="w3-container w3-center">
                        	<h4 style="font-size: 2vmin;"><strong>${myBoardList.wrtbtTitle }</strong></h4>
                    	</div>
                    	<c:if test="${myBoardList.storgPath ne null }">
                    		<img src="${pageContext.request.contextPath }${myBoardList.storgPath }" alt="게시판 이미지 자리" style="width:100%;">
                    	</c:if>
                    	<div class="w3-container w3-margin-top">
							<c:if test="${myBoardList.count>0 }">
								<c:if test="${myBoardList.wrtbtDstnct =='일반게시판' }">
									<span class="w3-small w3-padding" >Comment</span>
                        			<p class="w3-padding content-answers w3-round-large w3-border-blue grad-background-color" style="font-size: 1.8vmin; margin-top: 0em;">
                           			${myBoardList.subwrtbtText }
                        			</p>
								</c:if>
                        		<c:if test="${myBoardList.wrtbtDstnct =='상담게시판' }">
									<span class="w3-small w3-padding" >Answer</span>
                        			<p class=" w3-center w3-padding content-answers w3-round-large w3-border-blue grad-background-color" style="font-size: 1.8vmin; margin-top: 0em;">
                           			${myBoardList.subwrtbtText }
                        			</p>
                    			</c:if>
								
							</c:if>
                    	</div>
                    	
                    	<c:if test="${myBoardList.wrtbtDstnct =='상담게시판' }">
                    		<div class="w3-container w3-center w3-padding">
                        	<button class="w3-button w3-block w3-border w3-white w3-round-large w3-text-grey" style="letter-spacing: 2px;">답변하기</button>
                    		</div>
                    	</c:if>
                    	
                    	
                	</div>
					</c:if>
				</c:if>
				</c:forEach>
			</div>
			
			
			
            <div class="col-xs-12 col-sm-4 col-lg-4">
					<c:forEach items="${myBoardList }" var="myBoardList" varStatus="status">
						<c:if test="${status.index%3==1 }">
						
							<c:set var="name" value="${myBoardList.slctnNotiDstnct}" />
							<c:set var="leng" value="${fn:length(name)}" />
							<c:if test="${myBoardList.slctnNotiDstnct == '대학원' && myBoardList.pchrgYn=='Y'}">
							
								<div class="grad-banner w3-card w3-round-large" onclick="location.href='${pageContext.servletContext.contextPath }/noti/detail?no=${myBoardList.slctnNotiNo}&tabnm=${myBoardList.slctnNotiDstnct}'">
									<div class="w3-padding w3-text-grey w3-small" style="margin-bottom: -1.5em;">${myBoardList.year}년 ${myBoardList.slctnSemstr}</div>
									<img src="${pageContext.request.contextPath }${myBoardList.storgPath }" alt="대학교 로고 이미지" style="width: 100%; padding: 1em 1em 0 1em;">
									<div class="w3-container w3-center">
										<h4><strong>${myBoardList.lab }</strong></h4>
										<p style="font-size: 1.8vmin;">
											<span class="grad-target">${myBoardList.slctnTitle }</span>
										</p>
									</div>
									<div class="noti-period">
                        				<div class="w3-light-grey w3-tiny">
		                            	<c:if test="${myBoardList.percent<=0 }">
		                            		<div class="w3-container" style="width: 0%; height: 1px;"></div>
	                            		</c:if>
	                            		<c:if test="${myBoardList.percent>0 }">
		                            		<div class="w3-container w3-black" style="width: ${myBoardList.percent }%; height: 1px;"></div>
	                            		</c:if>
	                            		</div>
                        			</div>
									<div class="w3-padding">
										<span class="noti-hh">
										<i class="glyphicon glyphicon-paperclip"></i>
										</span> 
										<span class="noti-endtext w3-tag w3-round-large w3-light-grey w3-text-blue" style="float: right;"> 
											<c:if test="${myBoardList.percent<=0 }">
												모집 예정
											</c:if>
											<c:if test="${myBoardList.percent>0 }">
												D-${myBoardList.dday }
											</c:if>
										</span>
										</div>
									</div>

								</c:if>

					<c:if test="${myBoardList.slctnNotiDstnct == '대학원' && myBoardList.pchrgYn=='N'}" >
					
						<div class="grad-banner-our w3-card w3-round-large" onclick="location.href='${pageContext.servletContext.contextPath }/noti/detail?no=${myBoardList.slctnNotiNo}&tabnm=${myBoardList.slctnNotiDstnct}'">
							<div class="w3-padding w3-text-grey w3-small" style="margin-bottom: -1.5em;">${myBoardList.year }년 ${myBoardList.slctnSemstr}</div>
							<div class="w3-container w3-center w3-padding" style="margin-bottom: -1em;">
								<h4 class="w3-padding w3-round-large" style="margin-bottom: 0em;">
									<strong style="color: ${myBoardList.symbolColorNm };">${myBoardList.major }</strong>
									<strong>${myBoardList.lab }</strong>
								</h4>
								<p style="font-size: 1.8vmin;">${myBoardList.slctnTitle }</p>
							</div>
							<div class="w3-padding">
								<span class="noti-hh">
									<i class="glyphicon glyphicon-paperclip"></i>
								</span>
								<span class="noti-endtext w3-tag w3-round-large w3-light-grey w3-text-blue"	style="float: right;">
									<c:if test="${myBoardList.percent<=0 }">
										모집 예정
									</c:if>
									<c:if test="${myBoardList.percent>0 }">
										D-${myBoardList.dday }
									</c:if>
								</span>
							</div>
						</div>
						
					</c:if>


					<c:if test="${myBoardList.slctnNotiDstnct == '연구실' && myBoardList.pchrgYn=='Y'}">
									
						<div class="lab-banner w3-card w3-round-large" onclick="location.href='${pageContext.servletContext.contextPath }/noti/detail?no=${myBoardList.slctnNotiNo}&tabnm=${myBoardList.slctnNotiDstnct}'">
							<c:if test="${myBoardList.bk21EorgnzSuprtYn=='Y' }">
								<div class="w3-small w3-padding  "style="margin-bottom: -1.5em; height: 2.7em">
	                        		<span class="w3-red " style="padding-right: 2px; padding-left: 10px; margin-right: -5px">BK</span>
    	                    		<span class="w3-blue " style="padding-right: 5px; padding-left: 0px;">21+</span>
        	            		</div>						
						
							</c:if>
                    	<img src="${pageContext.request.contextPath }${myBoardList.storgPath }" alt="대학교 로고 이미지" style="width:100%; padding: 1em 1em 0 1em;">
                    	<div class="w3-container w3-center">
                        	<h4 style="font-size: 1.8vmin;"><strong>${myBoardList.graduate }</strong></h4>
                        	<h4 style="font-size: 1.8vmin;"><strong>${myBoardList.lab }</strong></h4>
                        	<p style="font-size: 1.8vmin;"><span class="grad-target">${myBoardList.slctnTitle }</span></p>
                    	</div>
                    	<div class="research-field w3-padding text-center">
                    		<c:forEach items="${myBoardList.researchList }" var="resList"	varStatus="status">
								<span class="w3-tag w3-black w3-tiny ">${resList.cdNm }</span>
							</c:forEach>
                    	</div>
                    	<div class="w3-padding">
                        	<span class="noti-hh"><i class="glyphicon glyphicon-paperclip"></i></span>
                        	<span class="noti-endtext w3-tag w3-round-large w3-light-grey w3-text-blue" style="float :right;">
                        		<c:if test="${myBoardList.percent<=0 }">
	                        		모집 예정
	                        	</c:if>
								<c:if test="${myBoardList.percent>0 }">
	                        		D-${myBoardList.dday }
	                        	</c:if>
	                        </span>
                    	</div>
                		</div>

					</c:if>

					<c:if test="${myBoardList.slctnNotiDstnct == '연구실' && myBoardList.pchrgYn=='N'}">
									
						<div class="grad-banner-our w3-card w3-round-large" onclick="location.href='${pageContext.servletContext.contextPath }/noti/detail?no=${myBoardList.slctnNotiNo}&tabnm=${myBoardList.slctnNotiDstnct}'">
                    		<div class="w3-padding w3-text-grey w3-small" style="margin-bottom: -1.5em;">${myBoardList.year }년 ${myBoardList.slctnSemstr }</div>
                    		<div class="w3-container w3-center w3-padding" style="margin-bottom: -1em;">
                        		<h5 class="w3-padding" style="margin-bottom: 0em;"><strong style="color: ${myBoardList.symbolColorNm };">${myBoardList.university } </strong></h5>
                        		<h5><strong>${myBoardList.graduate } ${myBoardList.lab }</strong></h5>
                        		<p style="font-size: 1.8vmin;">${myBoardList.slctnTitle }</p>
                    		</div>
                    		<div class="w3-padding">
                        		<span class="noti-hh"><i class="glyphicon glyphicon-paperclip"></i></span>
                        		<c:if test="${myBoardList.slctnEndDt == '9999-12-31 00:00:00.0' }">
                        			<span class="noti-endtext w3-tag w3-round-large w3-light-grey w3-text-blue" style="float :right;">상시모집</span>
								</c:if>

								<c:if test="${myBoardList.slctnEndDt != '9999-12-31 00:00:00.0' }">
									<c:if test="${myBoardList.percent<=0 }">
										<span class="noti-endtext w3-tag w3-round-large w3-light-grey w3-text-blue" style="float :right;">모집예정</span>
									</c:if>
									<c:if test="${myBoardList.percent>0 }">
										<span class="noti-endtext w3-tag w3-round-large w3-light-grey w3-text-blue" style="float :right;">D-${myBoardList.dday }</span>
									</c:if>
								</c:if>
                    		</div>
                		</div>
					</c:if>
					
					<c:if test="${'게시판' == fn:substring(name,leng-3,leng)}">
					<div class="qna-banner w3-card w3-round-large">
                    	<div class="w3-small w3-padding ">
                    		<c:if test="${myBoardList.wrtbtDstnct =='일반게시판' }">
                    			<span class="">Ordinary</span>
                    		</c:if>
                        	<c:if test="${myBoardList.wrtbtDstnct =='상담게시판' }">
                    			<span class="">Question</span>
                    		</c:if>
                    	</div>
                    	<div class="w3-container w3-center">
                        	<h4 style="font-size: 2vmin;"><strong>${myBoardList.wrtbtTitle }</strong></h4>
                    	</div>
                    	<c:if test="${myBoardList.storgPath ne null }">
                    		<img src="${pageContext.request.contextPath }${myBoardList.storgPath }" alt="게시판 이미지 자리" style="width:100%;">
                    	</c:if>
                    	<div class="w3-container w3-margin-top">
							<c:if test="${myBoardList.count>0 }">
								<c:if test="${myBoardList.wrtbtDstnct =='일반게시판' }">
									<span class="w3-small w3-padding" >Comment</span>
                        			<p class="w3-padding content-answers w3-round-large w3-border-blue grad-background-color" style="font-size: 1.8vmin; margin-top: 0em;">
                           			${myBoardList.subwrtbtText }
                        			</p>
								</c:if>
                        		<c:if test="${myBoardList.wrtbtDstnct =='상담게시판' }">
									<span class="w3-small w3-padding" >Answer</span>
                        			<p class=" w3-center w3-padding content-answers w3-round-large w3-border-blue grad-background-color" style="font-size: 1.8vmin; margin-top: 0em;">
                           			${myBoardList.subwrtbtText }
                        			</p>
                    			</c:if>
								
							</c:if>
                    	</div>
                    	
                    	<c:if test="${myBoardList.wrtbtDstnct =='상담게시판' }">
                    		<div class="w3-container w3-center w3-padding">
                        	<button class="w3-button w3-block w3-border w3-white w3-round-large w3-text-grey" style="letter-spacing: 2px;">답변하기</button>
                    		</div>
                    	</c:if>
                    	
                    	
                	</div>
					</c:if>
				</c:if>
				</c:forEach>
			</div>
			
			
            <div class="col-xs-12 col-sm-4 col-lg-4">
					<c:forEach items="${myBoardList }" var="myBoardList" varStatus="status">
						<c:if test="${status.index%3==2 }">
						
							<c:set var="name" value="${myBoardList.slctnNotiDstnct}" />
							<c:set var="leng" value="${fn:length(name)}" />
							<c:if test="${myBoardList.slctnNotiDstnct == '대학원' && myBoardList.pchrgYn=='Y'}">
							
								<div class="grad-banner w3-card w3-round-large" onclick="location.href='${pageContext.servletContext.contextPath }/noti/detail?no=${myBoardList.slctnNotiNo}&tabnm=${myBoardList.slctnNotiDstnct}'">
									<div class="w3-padding w3-text-grey w3-small" style="margin-bottom: -1.5em;">${myBoardList.year}년 ${myBoardList.slctnSemstr}</div>
									<img src="${pageContext.request.contextPath }${myBoardList.storgPath }" alt="대학교 로고 이미지" style="width: 100%; padding: 1em 1em 0 1em;">
									<div class="w3-container w3-center">
										<h4><strong>${myBoardList.lab }</strong></h4>
										<p style="font-size: 1.8vmin;">
											<span class="grad-target">${myBoardList.slctnTitle }</span>
										</p>
									</div>
									<div class="noti-period">
                        				<div class="w3-light-grey w3-tiny">
		                            	<c:if test="${myBoardList.percent<=0 }">
		                            		<div class="w3-container" style="width: 0%; height: 1px;"></div>
	                            		</c:if>
	                            		<c:if test="${myBoardList.percent>0 }">
		                            		<div class="w3-container w3-black" style="width: ${myBoardList.percent }%; height: 1px;"></div>
	                            		</c:if>
	                            		</div>
                        			</div>
										<div class="w3-padding">
										<span class="noti-hh">
										<i class="glyphicon glyphicon-paperclip"></i>
										</span> 
										<span class="noti-endtext w3-tag w3-round-large w3-light-grey w3-text-blue" style="float: right;"> 
											<c:if test="${myBoardList.percent<=0 }">
												모집 예정
											</c:if>
											<c:if test="${myBoardList.percent>0 }">
												D-${myBoardList.dday }
											</c:if>
										</span>
										</div>
									</div>

								</c:if>

					<c:if test="${myBoardList.slctnNotiDstnct == '대학원' && myBoardList.pchrgYn=='N'}">
					
						<div class="grad-banner-our w3-card w3-round-large" onclick="location.href='${pageContext.servletContext.contextPath }/noti/detail?no=${myBoardList.slctnNotiNo}&tabnm=${myBoardList.slctnNotiDstnct}'">
							<div class="w3-padding w3-text-grey w3-small" style="margin-bottom: -1.5em;">${myBoardList.year }년 ${myBoardList.slctnSemstr}</div>
							<div class="w3-container w3-center w3-padding" style="margin-bottom: -1em;">
								<h4 class="w3-padding w3-round-large" style="margin-bottom: 0em;">
									<strong style="color: ${myBoardList.symbolColorNm };">${myBoardList.major }</strong>
									<strong>${myBoardList.lab }</strong>
								</h4>
								<p style="font-size: 1.8vmin;">${myBoardList.slctnTitle }</p>
							</div>
							<div class="w3-padding">
								<span class="noti-hh">
									<i class="glyphicon glyphicon-paperclip"></i>
								</span>
								<span class="noti-endtext w3-tag w3-round-large w3-light-grey w3-text-blue"	style="float: right;">
									<c:if test="${myBoardList.percent<=0 }">
										모집 예정
									</c:if>
									<c:if test="${myBoardList.percent>0 }">
										D-${myBoardList.dday }
									</c:if>
								</span>
							</div>
						</div>
						
					</c:if>


					<c:if test="${myBoardList.slctnNotiDstnct == '연구실' && myBoardList.pchrgYn=='Y'}">
									
						<div class="lab-banner w3-card w3-round-large" onclick="location.href='${pageContext.servletContext.contextPath }/noti/detail?no=${myBoardList.slctnNotiNo}&tabnm=${myBoardList.slctnNotiDstnct}'">
							<c:if test="${myBoardList.bk21EorgnzSuprtYn=='Y' }">
								<div class="w3-small w3-padding  "style="margin-bottom: -1.5em; height: 2.7em">
	                        		<span class="w3-red " style="padding-right: 2px; padding-left: 10px; margin-right: -5px">BK</span>
    	                    		<span class="w3-blue " style="padding-right: 5px; padding-left: 0px;">21+</span>
        	            		</div>						
						
							</c:if>
                    	<img src="${pageContext.request.contextPath }${myBoardList.storgPath }" alt="대학교 로고 이미지" style="width:100%; padding: 1em 1em 0 1em;">
                    	<div class="w3-container w3-center">
                        	<h4 style="font-size: 1.8vmin;"><strong>${myBoardList.graduate }</strong></h4>
                        	<h4 style="font-size: 1.8vmin;"><strong>${myBoardList.lab }</strong></h4>
                        	<p style="font-size: 1.8vmin;"><span class="grad-target">${myBoardList.slctnTitle }</span></p>
                    	</div>
                    	<div class="research-field w3-padding text-center">
                    		<c:forEach items="${myBoardList.researchList }" var="resList"	varStatus="status">
								<span class="w3-tag w3-black w3-tiny ">${resList.cdNm }</span>
							</c:forEach>
                    	</div>
                    	<div class="w3-padding">
                        	<span class="noti-hh"><i class="glyphicon glyphicon-paperclip"></i></span>
                        	<span class="noti-endtext w3-tag w3-round-large w3-light-grey w3-text-blue" style="float :right;">
                        		<c:if test="${myBoardList.percent<=0 }">
	                        		모집 예정
	                        	</c:if>
								<c:if test="${myBoardList.percent>0 }">
	                        		D-${myBoardList.dday }
	                        	</c:if>
	                        </span>
                    	</div>
                		</div>

					</c:if>

					<c:if test="${myBoardList.slctnNotiDstnct == '연구실' && myBoardList.pchrgYn=='N'}">
									
						<div class="grad-banner-our w3-card w3-round-large" onclick="location.href='${pageContext.servletContext.contextPath }/noti/detail?no=${myBoardList.slctnNotiNo}&tabnm=${myBoardList.slctnNotiDstnct}'">
                    		<div class="w3-padding w3-text-grey w3-small" style="margin-bottom: -1.5em;">${myBoardList.year }년 ${myBoardList.slctnSemstr }</div>
                    		<div class="w3-container w3-center w3-padding" style="margin-bottom: -1em;">
                        		<h5 class="w3-padding" style="margin-bottom: 0em;"><strong style="color: ${myBoardList.symbolColorNm };">${myBoardList.university } </strong></h5>
                        		<h5><strong>${myBoardList.graduate } ${myBoardList.lab }</strong></h5>
                        		<p style="font-size: 1.8vmin;">${myBoardList.slctnTitle }</p>
                    		</div>
                    		<div class="w3-padding">
                        		<span class="noti-hh"><i class="glyphicon glyphicon-paperclip"></i></span>
                        		<c:if test="${myBoardList.slctnEndDt == '9999-12-31 00:00:00.0' }">
                        			<span class="noti-endtext w3-tag w3-round-large w3-light-grey w3-text-blue" style="float :right;">상시모집</span>
								</c:if>

								<c:if test="${myBoardList.slctnEndDt != '9999-12-31 00:00:00.0' }">
									<c:if test="${myBoardList.percent<=0 }">
										<span class="noti-endtext w3-tag w3-round-large w3-light-grey w3-text-blue" style="float :right;">모집예정</span>
									</c:if>
									<c:if test="${myBoardList.percent>0 }">
										<span class="noti-endtext w3-tag w3-round-large w3-light-grey w3-text-blue" style="float :right;">D-${myBoardList.dday }</span>
									</c:if>
								</c:if>
                    		</div>
                		</div>
					</c:if>
					
					<c:if test="${'게시판' == fn:substring(name,leng-3,leng)}">
					<div class="qna-banner w3-card w3-round-large">
                    	<div class="w3-small w3-padding ">
                    		<c:if test="${myBoardList.wrtbtDstnct =='일반게시판' }">
                    			<span class="">Ordinary</span>
                    		</c:if>
                        	<c:if test="${myBoardList.wrtbtDstnct =='상담게시판' }">
                    			<span class="">Question</span>
                    		</c:if>
                    	</div>
                    	<div class="w3-container w3-center">
                        	<h4 style="font-size: 2vmin;"><strong>${myBoardList.wrtbtTitle }</strong></h4>
                    	</div>
                    	<c:if test="${myBoardList.storgPath ne null }">
                    		<img src="${pageContext.request.contextPath }${myBoardList.storgPath }" alt="게시판 이미지 자리" style="width:100%;">
                    	</c:if>
                    	<div class="w3-container w3-margin-top">
							<c:if test="${myBoardList.count>0 }">
								<c:if test="${myBoardList.wrtbtDstnct =='일반게시판' }">
									<span class="w3-small w3-padding" >Comment</span>
                        			<p class="w3-padding content-answers w3-round-large w3-border-blue grad-background-color" style="font-size: 1.8vmin; margin-top: 0em;">
                           			${myBoardList.subwrtbtText }
                        			</p>
								</c:if>
                        		<c:if test="${myBoardList.wrtbtDstnct =='상담게시판' }">
									<span class="w3-small w3-padding" >Answer</span>
                        			<p class=" w3-center w3-padding content-answers w3-round-large w3-border-blue grad-background-color" style="font-size: 1.8vmin; margin-top: 0em;">
                           			${myBoardList.subwrtbtText }
                        			</p>
                    			</c:if>
								
							</c:if>
                    	</div>
                    	
                    	<c:if test="${myBoardList.wrtbtDstnct =='상담게시판' }">
                    		<div class="w3-container w3-center w3-padding">
                        	<button class="w3-button w3-block w3-border w3-white w3-round-large w3-text-grey" style="letter-spacing: 2px;">답변하기</button>
                    		</div>
                    	</c:if>
                    	
                    	
                	</div>
					</c:if>
				</c:if>
				</c:forEach>
			</div>

        </div>

    </div>

    <!--인문학-->

    <div class="row">
        <div class="col-xs-12 col-sm-12 col-lg-12">
            <!--
                contents title
            -->
            <h3>
                <a href="major-content.html" style="padding-top: 3em;" name="Humanities">
                	    인문학
                    <button type="button" class="more">More ></button>
                </a>
            </h3>

            <hr>

            <div class="col-xs-12 col-sm-4 col-lg-4">
                <div class="jumbotron"><br></div>
                <div class="jumbotron"><br></div>
            </div>
            <div class="col-xs-6 col-sm-4 col-lg-4">
                <div class="jumbotron"><br></div>
                <div class="jumbotron"><br></div>
            </div>
            <div class="col-xs-6 col-sm-4 col-lg-4">
                <div class="jumbotron"><br></div>
                <div class="jumbotron"><br></div>
            </div>

        </div>

        <!--// 심포지엄, 학회 모임-->

        <div class="col-xs-12 col-sm-12 col-lg-12">
            <div class="col-xs-12 col-sm-3 col-lg-3">
                <div class="jumbotron symposium"><br></div>
            </div>
            <div class="col-xs-6 col-sm-3 col-lg-3">
                <div class="jumbotron symposium"><br></div>
            </div>
            <div class="col-xs-6 col-sm-3 col-lg-3">
                <div class="jumbotron symposium"><br></div>
            </div>
            <div class="col-xs-6 col-sm-3 col-lg-3">
                <div class="jumbotron symposium"><br></div>
            </div>
        </div>
    </div>

    <!--사회과학-->

    <div class="row">
        <div class="col-xs-12 col-sm-12 col-lg-12">
            <!--
                contents title
            -->
            <h3>
                <a href="major-content.html" style="padding-top: 3em;"  name="SocialScience">
                      	  사회과학
                    <button type="button" class="more">More ></button>
                </a>
            </h3>

            <hr>

            <div class="col-xs-12 col-sm-4 col-lg-4">
                <div class="jumbotron"><br></div>
                <div class="jumbotron"><br></div>
            </div>
            <div class="col-xs-6 col-sm-4 col-lg-4">
                <div class="jumbotron"><br></div>
                <div class="jumbotron"><br></div>
            </div>
            <div class="col-xs-6 col-sm-4 col-lg-4">
                <div class="jumbotron"><br></div>
                <div class="jumbotron"><br></div>
            </div>

        </div>

        <!--// 심포지엄, 학회 모임-->

        <div class="col-xs-12 col-sm-12 col-lg-12">
            <div class="col-xs-12 col-sm-3 col-lg-3">
                <div class="jumbotron symposium"><br></div>
            </div>
            <div class="col-xs-6 col-sm-3 col-lg-3">
                <div class="jumbotron symposium"><br></div>
            </div>
            <div class="col-xs-6 col-sm-3 col-lg-3">
                <div class="jumbotron symposium"><br></div>
            </div>
            <div class="col-xs-6 col-sm-3 col-lg-3">
                <div class="jumbotron symposium"><br></div>
            </div>
        </div>
    </div>

    <!--인문학-->

    <div class="row">
        <div class="col-xs-12 col-sm-12 col-lg-12">
            <!--
                contents title
            -->
            <h3>
                <a href="${pageContext.servletContext.contextPath }/study/main" style="padding-top: 3em;"  name="NaturalScience">
                    자연과학
                    <button type="button" class="more">More ></button>
                </a>
            </h3>

            <hr>

            <div class="col-xs-12 col-sm-4 col-lg-4">
                <div class="jumbotron"><br></div>
                <div class="jumbotron"><br></div>
            </div>
            <div class="col-xs-6 col-sm-4 col-lg-4">
                <div class="jumbotron"><br></div>
                <div class="jumbotron"><br></div>
            </div>
            <div class="col-xs-6 col-sm-4 col-lg-4">
                <div class="jumbotron"><br></div>
                <div class="jumbotron"><br></div>
            </div>

        </div>

        <!--// 심포지엄, 학회 모임-->

        <div class="col-xs-12 col-sm-12 col-lg-12">
            <div class="col-xs-12 col-sm-3 col-lg-3">
                <div class="jumbotron symposium"><br></div>
            </div>
            <div class="col-xs-6 col-sm-3 col-lg-3">
                <div class="jumbotron symposium"><br></div>
            </div>
            <div class="col-xs-6 col-sm-3 col-lg-3">
                <div class="jumbotron symposium"><br></div>
            </div>
            <div class="col-xs-6 col-sm-3 col-lg-3">
                <div class="jumbotron symposium"><br></div>
            </div>
        </div>
    </div>

    <!--인문학-->

    <div class="row">
        <div class="col-xs-12 col-sm-12 col-lg-12">
            <!--
                contents title
            -->
            <h3>
                <a href="${pageContext.servletContext.contextPath }/study/main" style="padding-top: 3em;" name="Engineering">
                 	   공학
                    <button type="button" class="more">More ></button>
                </a>
            </h3>

            <hr>

            <div class="col-xs-12 col-sm-4 col-lg-4">
                <div class="jumbotron"><br></div>
                <div class="jumbotron"><br></div>
            </div>
            <div class="col-xs-6 col-sm-4 col-lg-4">
                <div class="jumbotron"><br></div>
                <div class="jumbotron"><br></div>
            </div>
            <div class="col-xs-6 col-sm-4 col-lg-4">
                <div class="jumbotron"><br></div>
                <div class="jumbotron"><br></div>
            </div>

        </div>

        <!--// 심포지엄, 학회 모임-->

        <div class="col-xs-12 col-sm-12 col-lg-12">
            <div class="col-xs-12 col-sm-3 col-lg-3">
                <div class="jumbotron symposium"><br></div>
            </div>
            <div class="col-xs-6 col-sm-3 col-lg-3">
                <div class="jumbotron symposium"><br></div>
            </div>
            <div class="col-xs-6 col-sm-3 col-lg-3">
                <div class="jumbotron symposium"><br></div>
            </div>
            <div class="col-xs-6 col-sm-3 col-lg-3">
                <div class="jumbotron symposium"><br></div>
            </div>
        </div>
    </div>

    <!--인문학-->

    <div class="row">
        <div class="col-xs-12 col-sm-12 col-lg-12">
            <!--
                contents title
            -->
            <h3>
                <a href="major-content.html" style="padding-top: 3em;" name="MedicineandPharmacy">
                    의약학
                    <button type="button" class="more">More ></button>
                </a>
            </h3>

            <hr>

            <div class="col-xs-12 col-sm-4 col-lg-4">
                <div class="jumbotron"><br></div>
                <div class="jumbotron"><br></div>
            </div>
            <div class="col-xs-6 col-sm-4 col-lg-4">
                <div class="jumbotron"><br></div>
                <div class="jumbotron"><br></div>
            </div>
            <div class="col-xs-6 col-sm-4 col-lg-4">
                <div class="jumbotron"><br></div>
                <div class="jumbotron"><br></div>
            </div>

        </div>

        <!--// 심포지엄, 학회 모임-->

        <div class="col-xs-12 col-sm-12 col-lg-12">
            <div class="col-xs-12 col-sm-3 col-lg-3">
                <div class="jumbotron symposium"><br></div>
            </div>
            <div class="col-xs-6 col-sm-3 col-lg-3">
                <div class="jumbotron symposium"><br></div>
            </div>
            <div class="col-xs-6 col-sm-3 col-lg-3">
                <div class="jumbotron symposium"><br></div>
            </div>
            <div class="col-xs-6 col-sm-3 col-lg-3">
                <div class="jumbotron symposium"><br></div>
            </div>
        </div>
    </div>

    <!--인문학-->

    <div class="row">
        <div class="col-xs-12 col-sm-12 col-lg-12">
            <!--
                contents title
            -->
            <h3>
                <a href="major-content.html" style="padding-top: 3em;" name="MarineAgriculture">
                     농수해양학
                    <button type="button" class="more">More ></button>
                </a>
            </h3>

            <hr>

            <div class="col-xs-12 col-sm-4 col-lg-4">
                <div class="jumbotron"><br></div>
                <div class="jumbotron"><br></div>
            </div>
            <div class="col-xs-6 col-sm-4 col-lg-4">
                <div class="jumbotron"><br></div>
                <div class="jumbotron"><br></div>
            </div>
            <div class="col-xs-6 col-sm-4 col-lg-4">
                <div class="jumbotron"><br></div>
                <div class="jumbotron"><br></div>
            </div>

        </div>

        <!--// 심포지엄, 학회 모임-->

        <div class="col-xs-12 col-sm-12 col-lg-12">
            <div class="col-xs-12 col-sm-3 col-lg-3">
                <div class="jumbotron symposium"><br></div>
            </div>
            <div class="col-xs-6 col-sm-3 col-lg-3">
                <div class="jumbotron symposium"><br></div>
            </div>
            <div class="col-xs-6 col-sm-3 col-lg-3">
                <div class="jumbotron symposium"><br></div>
            </div>
            <div class="col-xs-6 col-sm-3 col-lg-3">
                <div class="jumbotron symposium"><br></div>
            </div>
        </div>
    </div>

    <!--인문학-->

    <div class="row">
        <div class="col-xs-12 col-sm-12 col-lg-12">
            <!--
                contents title
            -->
            <h3>
                <a href="major-content.html" style="padding-top: 3em;" name="Kinesiology">
                    예술체육학
                    <button type="button" class="more">More ></button>
                </a>
            </h3>

            <hr>

            <div class="col-xs-12 col-sm-4 col-lg-4">
                <div class="jumbotron"><br></div>
                <div class="jumbotron"><br></div>
            </div>
            <div class="col-xs-6 col-sm-4 col-lg-4">
                <div class="jumbotron"><br></div>
                <div class="jumbotron"><br></div>
            </div>
            <div class="col-xs-6 col-sm-4 col-lg-4">
                <div class="jumbotron"><br></div>
                <div class="jumbotron"><br></div>
            </div>

        </div>

        <!--// 심포지엄, 학회 모임-->

        <div class="col-xs-12 col-sm-12 col-lg-12">
            <div class="col-xs-12 col-sm-3 col-lg-3">
                <div class="jumbotron symposium"><br></div>
            </div>
            <div class="col-xs-6 col-sm-3 col-lg-3">
                <div class="jumbotron symposium"><br></div>
            </div>
            <div class="col-xs-6 col-sm-3 col-lg-3">
                <div class="jumbotron symposium"><br></div>
            </div>
            <div class="col-xs-6 col-sm-3 col-lg-3">
                <div class="jumbotron symposium"><br></div>
            </div>
        </div>
    </div>

    <!--인문학-->

    <div class="row">
        <div class="col-xs-12 col-sm-12 col-lg-12">
            <!--
                contents title
            -->
            <h3>
                <a href="major-content.html"  style="padding-top: 3em;" name="ScienceandTechnology">
                    복학학
                    <button type="button" class="more">More ></button>
                </a>
            </h3>

            <hr>

            <div class="col-xs-12 col-sm-4 col-lg-4">
                <div class="jumbotron"><br></div>
                <div class="jumbotron"><br></div>
            </div>
            <div class="col-xs-6 col-sm-4 col-lg-4">
                <div class="jumbotron"><br></div>
                <div class="jumbotron"><br></div>
            </div>
            <div class="col-xs-6 col-sm-4 col-lg-4">
                <div class="jumbotron"><br></div>
                <div class="jumbotron"><br></div>
            </div>

        </div>

        <!--// 심포지엄, 학회 모임-->

        <div class="col-xs-12 col-sm-12 col-lg-12">
            <div class="col-xs-12 col-sm-3 col-lg-3">
                <div class="jumbotron symposium"><br></div>
            </div>
            <div class="col-xs-6 col-sm-3 col-lg-3">
                <div class="jumbotron symposium"><br></div>
            </div>
            <div class="col-xs-6 col-sm-3 col-lg-3">
                <div class="jumbotron symposium"><br></div>
            </div>
            <div class="col-xs-6 col-sm-3 col-lg-3">
                <div class="jumbotron symposium"><br></div>
            </div>
        </div>
    </div>
</div>

</div>


</body>
</html>