<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>하이그래드넷</title>
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link href="css/higrad-signup.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script type="text/javascript" src="js/bootstrap.js"></script>
    <style>

        @media screen and (max-width: 768px) {
            .major-nav-box {
            }
        }

        @media screen and (min-width: 768px) {

        }

        .jumbotron {
            position: relative;
            z-index: 1;
            height: 25em;
            margin-bottom: 0.1em;
            text-align: center;
            background-size: cover;
            
        }
        /*전공 네비게이션 박스*/
        .navbar-left {
            font-weight: 400;
            padding-top: 15px;
            padding-bottom: 15px;
            border: 0;
            border-radius: 0;
            margin-bottom: 0;
            font-size: 14px;
            letter-spacing: 5px;
        }

        .navbar-nav li a:hover {
            color: #1abc9c !important;
            background-color: white;
        }

        .jumbotron {
            margin-bottom: 1em;
        }
        
        .jumbotron2 {
            height: 20em;
            margin-bottom: 1em;
            border: 1px solid #000000;
        }
        
        .jumbotron3{
            height: 10em;
            margin-bottom: 1em;
            border: 1px solid #000000;
        }
        .jumbotron4{
            height: 7em;
            margin-bottom: 1em;
            border: 1px solid #000000;
        }

        .user-info-box {
            background-color : rgba(78,18,201,0.8) !important;
            height : 20em;
        }
        .user-info {
            color : #FFFFFF;
            padding-top: 4em;
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
        
        
        
        
        
        body {
            padding-top: 6em;
        }

        .more {
            float: right;
            width: 5em;
            font-size: 0.5em;
            margin-top: 1.5em;
        }
        .symposium {
            height: 15em;
        }

        /*전공 네비게이션 박스*/
        .major-nav-box {
            height: 6em;
            /*border-bottom: 1px solid grey;*/
        }

        .navbar-left {
            font-weight: 400;
            padding-top: 15px;
            padding-bottom: 15px;
            border: 0;
            border-radius: 0;
            margin-bottom: 0;
            font-size: 14px;
            letter-spacing: 5px;
        }


        .grad-banner {
            margin-bottom: 3em;
        }

        .lab-banner {
            margin-bottom: 3em;
        }

        /*공고 포스트 */
        .noti-default {
            width: 100%;
            border: solid 1px #ccc;
            border-radius: 3px;
            margin-bottom: 5%;
            background-color: #ffffff;
        }

        .noti-default:hover {
            width: 100%;
            border: solid 1px red;
            border-radius: 3px;
            margin-bottom: 5%;
            background-color: #ffffff;
        }

        .noti-default2 {
            width: 100%;
            border: solid 1px #ccc;
            border-radius: 3px;
            margin-bottom: 5%;
            background-color: #ffffff;
        }

        .noti-name {
            color: darkblue;
            border-left: 0.5em solid darkblue;
            margin-bottom: 2%;
            font-weight: 500;
            font-size: 1.1em;
            padding-left: 3%;
            padding-right: 3%;
            padding-top: 1%;
            letter-spacing: 2px;


        }

        .noti-name2 {
            color: darkblue;
            margin-bottom: 2%;
            font-weight: 500;
            font-size: 1.1em;
            padding-right: 3%;
            padding-top: 1%;
            letter-spacing: 2px;
            display: block;
   			text-overflow:ellipsis;
   			overflow: hidden;
   			white-space: nowrap;

        }
        
        .max-lines {
  		display: block; /* or inline-block */
  		text-overflow: ellipsis;
  		/*white-space: nowrap;*/
  		word-wrap: break-word;
  		overflow: hidden;
  		max-height: 7.2em;
  		line-height: 1.8em;
		}

        .noti-title, .noti-subtitle {
            font-size: 0.8em;
            padding-left: 6%;
            padding-right: 3%;
            letter-spacing: 1px;
        }

        .noti-subtitle {
            font-weight: bold;
        }

        .noti-endtext, .noti-hh {
            width: 48%;
            font-size: 0.8em;
            color: #929292;
            display: inline-block;
            padding-left: 3%;
            padding-right: 3%;
            padding-bottom: 3%;
        }

        .noti-hh {
            text-align: left;
        }

        .noti-endtext {
            text-align: right;
        }

        .noti-period {
            padding-top: 2%;
            padding-bottom: 2%;
        }

        /*세미나 컨퍼런스*/
        .thumbnail {
            padding: 0 0 15px 0;
            border-radius: 0;
            box-shadow: 0 5px 40px 0 rgba(0, 0, 0, 0.1), 0 15px 25px 0 rgba(0, 0, 0, 0.1);
            border : 1px solid white;
        }

        .thumbnail p {
            margin-top: 15px;
            color: #555;
        }

        /* Black buttons with extra padding and without rounded borders */
        .btn {
            padding: 10px 20px;
            background-color: #333;
            color: #f1f1f1;
            border-radius: 0;
            transition: .2s;
        }

        /* On hover, the color of .btn will transition to white with black text */
        .btn:hover, .btn:focus {
            border: 1px solid #333;
            background-color: #fff;
            color: #000;
        }
        .semester {
            background-color: white;
            color : grey;
            letter-spacing: 1px;
            margin-left: 1.2em;
            font-size: 0.8em;
            border-left: 3px solid #2aabd2;
        }
        .conference-banner {
            max-height : 183px;
        }

        .thumbnail{
            border-radius: 7px;
        }

        img {
            border-radius: 7px;
        }
        .research-field {
            height: 3em;
            text-overflow:ellipsis;
            overflow: hidden;
            white-space: normal;
        }
        
        .test{
        	border: 2px solid black;
        	margin-bottom: 20px;
        }
        .em{
        padding: 0 !important
        }
        
        
        
        

    </style>

</head>
<body>

<c:import url="/WEB-INF/views/include/header.jsp" />


<div class="row major-nav-box">
  <div class="jumbotron user-info-box">
    <div class="container">
    <input id='mbNo' type="hidden" value="${authUser.mbNo }">
        <h2 class="text-left user-info" style="color: white; font-weight: bold">${authUser.nknm }</h2>
        <div class="row user-info-list-box">
            <ul>
            
                <li class=" user-info-list">
                <i class="glyphicon glyphicon-education"></i>
                <span class="user-info-weight">
               		<c:set var="cindex" value='0'/>
					<c:forEach var='infoList' items='${infoList }' varStatus="status">
					
						<c:if test="${infoList.cdDstnct=='학문' }">
						
							<c:if test="${cindex=='0'}">
								${infoList.cdNm }
							</c:if>
							<c:if test="${cindex!='0' }">
								/${infoList.cdNm }
							</c:if>
							
							<c:set var="cindex" value = '1'/>
						</c:if>
						
					</c:forEach>
					<c:if test="${cindex=='0' }">분야 미설정</c:if>
				</span>
                </li>
                
                <li class=" user-info-list">
                <i class="glyphicon glyphicon-search"></i>
                <span class="user-info-weight">
                	<c:set var="cindex" value='0'/>
					<c:forEach var='infoList' items='${infoList }' varStatus="status">
					
						<c:if test="${infoList.cdDstnct=='연구분야' }">
						
							<c:if test="${cindex=='0'}">
								${infoList.cdNm }
							</c:if>
							<c:if test="${cindex!='0' }">
								/${infoList.cdNm }
							</c:if>
							
							<c:set var="cindex" value='1'/>
						</c:if>
						
					</c:forEach>
					<c:if test="${cindex=='0' }">연구분야 미설정</c:if>
                </span>
                </li>
                
                <li class=" user-info-list ">
                <i class="glyphicon glyphicon-road"></i>
                <span class="user-info-weight">
                	<c:set var="cindex" value='0'/>
					<c:forEach var='infoList' items='${infoList }' varStatus="status">
					
						<c:if test="${infoList.cdDstnct=='방문목적' }">
						
							<c:if test="${cindex=='0'}">
								${infoList.cdNm }
							</c:if>
							<c:if test="${cindex!='0' }">
								/${infoList.cdNm }
							</c:if>
							
							<c:set var="cindex" value='1'/>
						</c:if>
						
					</c:forEach>
					<c:if test="${cindex=='0' }">방문목적 미설정</c:if>
                </span>
                </li>
                
                <li class=" user-info-list">
                <i class="glyphicon glyphicon-map-marker"></i>
                <span class="user-info-weight">
                	<c:set var="cindex" value='0'/>
					<c:forEach var='infoList' items='${infoList }' varStatus="status">
					
						<c:if test="${infoList.cdDstnct=='지역' }">
						
							<c:if test="${cindex=='0'}">
								${infoList.cdNm }
							</c:if>
							<c:if test="${cindex!='0' }">
								/${infoList.cdNm }
							</c:if>
							
							<c:set var="cindex" value='1'/>
						</c:if>
						
					</c:forEach>
					<c:if test="${cindex=='0' }">지역 미설정</c:if>
				</span></li>
            </ul>

        </div>
    </div>
  </div>

</div>
<div class="row">
    <div class="container">
    </div>
</div>

<!--
    main contents
    page
-->
<div class="row">

    <div class="container">
    <ul class="nav navbar-nav navbar-left major-nav-box" style="margin-top: 10px;">
            <li><a href="${pageContext.request.contextPath}/user/test">새소식</a></li>
            <li><a href="${pageContext.request.contextPath}/user/test?type=noti">모집공고</a></li>
            <li><a href="${pageContext.request.contextPath}/user/test?type=myboard">내가 쓴 글</a></li>
            <li><a href="${pageContext.request.contextPath}/user/test?type=myscrap">스크랩</a></li>
    </ul>
    	
    	<c:forEach items="${calList }" var="calList">
    		<div class="row">
            <div class="col-xs-12 col-sm-12 col-lg-12">
                <!--날짜 ,요일 , 년월 -->
                <h1>
                    <div style="float: left; margin-right: 0.3em;">${calList.day }</div>
                    <small>
                        <div style="float: left; font-size : medium; line-height: 130%;">${calList.week }<br>${calList.year }년 ${calList.month }월</div>
                    </small>
                    <br>
                </h1>
                <!--시작 라인-->
                <hr>
                <!--내용-->
                
                <div class="col-xs-4 col-sm-4 col-lg-4">
                  <c:forEach items="${BoardList }" var="BoardList" varStatus="status">
                    <c:if test="${BoardList.no%3==1 && calList.month==BoardList.month && calList.day==BoardList.day }" >
                    	
                    	<c:set var="name" value="${BoardList.slctnNotiDstnct}"/>
                    	<c:set var="leng" value="${fn:length(name)}"/>
                    
                    	<c:if test="${BoardList.slctnNotiDstnct == '대학원' && BoardList.pchrgYn=='Y'}">
                    		<div class="col-xs-12 col-sm-12 col-lg-12 em">
                    		<div class="thumbnail text-center">
                        		<span class="w3-tag w3-display-topleft semester">${BoardList.year} / ${BoardList.slctnSemstr}</span>
                        		<img src="/net/resources/images/higrad-img/globalsymbol_korea2_large.gif" alt="${BoardList.major }" style="padding: 7% 5% 0 5%;">
                        		<h5><strong>${BoardList.lab }</strong></h5>
                        		<p>${BoardList.slctnTitle }</p>
                        		<div class="noti-period">
                        			<div class="w3-light-grey w3-tiny">
		                            <c:if test="${BoardList.percent<=0 }">
	                            		<div class="w3-container" style="width: 0%; height: 1px;"></div>
	                            	</c:if>
	                            	<c:if test="${BoardList.percent>0 }">
	                            		<div class="w3-container w3-black" style="width: ${BoardList.percent }%; height: 1px;"></div>
	                            	</c:if>
	                            	</div>
                        		</div>
                        		<div style="margin-bottom: -5%;">
		                            <div class="noti-hh"><i class="glyphicon glyphicon-paperclip"></i></div>
		                            <c:if test="${BoardList.percent<=0 }">
	                            		<div class="noti-endtext">모집 예정</div>
	                            	</c:if>
	                            	<c:if test="${BoardList.percent>0 }">
	                            		<div class="noti-endtext">D-${BoardList.dday }</div>
	                            	</c:if>
                        		</div>
                    		</div>
                    		</div>
                    		
                    	</c:if>
                    	
                    	<c:if test="${BoardList.slctnNotiDstnct == '대학원' && BoardList.pchrgYn=='N'}">
                    	<div class="col-xs-12 col-sm-12 col-lg-12 em">
                    		<div class="noti-default">
                        		<div class="noti-name" style="color: ${BoardList.symbolColorNm };" >${BoardList.major } ${BoardList.lab }</div>
                        		<div class="noti-title" >${BoardList.year }학년도 ${BoardList.slctnSemstr}</div>
                        		<div class="noti-subtitle" style="color: ${BoardList.symbolColorNm };">${BoardList.slctnTitle }</div>
                        		<div class="noti-period" style="color: ${BoardList.symbolColorNm };">
	                            	<div class="w3-light-grey w3-tiny">
		                            <c:if test="${BoardList.percent<=0 }">
	                            		<div class="w3-container" style="width: 0%; height: 1px;"></div>
	                            	</c:if>
	                            	<c:if test="${BoardList.percent>0 }">
	                            		<div class="w3-container w3-black" style="width: ${BoardList.percent }%; height: 1px;"></div>
	                            	</c:if>
	                            	</div>
                        		</div>
	                        	<div>
	    	                        <div class="noti-hh"><i class="glyphicon glyphicon-bookmark"></i> </div>
                            		<c:if test="${BoardList.percent<=0 }">
	                            		<div class="noti-endtext">모집 예정</div>
	                            	</c:if>
	                            	<c:if test="${BoardList.percent>0 }">
	                            		<div class="noti-endtext">D-${BoardList.dday }</div>
	                            	</c:if>
                        		</div>
                    		</div>
                    		</div>
                    		
                    	</c:if>
                    	
                    	
                    	<c:if test="${BoardList.slctnNotiDstnct == '연구실' && BoardList.pchrgYn=='Y'}">
                    	<div class="col-xs-12 col-sm-12 col-lg-12 em">
                    		<div class="thumbnail text-center">
                        		<img src="/net/resources/images/higrad-img/globalsymbol_korea2_large.gif" alt="${BoardList.lab }" style="padding: 5%">
                        		<h5 style="font-size: 1.8vmin;"><strong>${BoardList.lab }</strong></h5>
                        		<p style="font-size: 1.8vmin;">${BoardList.slctnTitle }</p>
                        		<div class="research-field">
                        			<c:forEach items="${BoardList.researchList }" var="resList" varStatus="status">
                            		<span class="w3-tag w3-black w3-tiny ">${resList.cdNm }</span>
                            		</c:forEach>
                        		</div>
                        		<div style="margin-bottom: -5%;">
                            		<div class="noti-hh"><i class="glyphicon glyphicon-paperclip"></i></div>
                            		<c:if test="${BoardList.slctnEndDt == '9999-12-31 00:00:00.0' }">
                            			<div class="noti-endtext">상시 모집</div>
                            		</c:if>
                            		
                            		<c:if test="${BoardList.slctnEndDt != '9999-12-31 00:00:00.0' }">
                            			<c:if test="${BoardList.percent<=0 }">
	                            			<div class="noti-endtext">모집 예정</div>
	                            		</c:if>
	                            		<c:if test="${BoardList.percent>0 }">
		                            		<div class="noti-endtext">D-${BoardList.dday }</div>
	                            		</c:if>
                            		</c:if>
                            		
                        		</div>
                    		</div>
                    		</div>

                    		
                    		
                    	</c:if>
                    	
                    	<c:if test="${BoardList.slctnNotiDstnct == '연구실' && BoardList.pchrgYn=='N'}">
                    	<div class="col-xs-12 col-sm-12 col-lg-12 em">
                    	<div class="noti-default">
                    		<div class="noti-name2 " style="color: ${BoardList.symbolColorNm };"><i class="glyphicon glyphicon-bookmark"></i>
                        	${BoardList.university } ${BoardList.graduate } ${BoardList.lab }   
                    		</div>
                    		<div class="noti-title" >${BoardList.year }학년도 ${BoardList.lab }</div>
                    		<div class="noti-subtitle" style="color: ${BoardList.symbolColorNm };">${BoardList.slctnTitle }</div>
                    		<div>
                        		<div class="noti-hh"><i class="glyphicon glyphicon-paperclip"></i></div>
                        		<c:if test="${BoardList.slctnEndDt == '9999-12-31 00:00:00.0' }">
                            			<div class="noti-endtext">상시 모집</div>
                            		</c:if>
                            		
                            		<c:if test="${BoardList.slctnEndDt != '9999-12-31 00:00:00.0' }">
                            			<c:if test="${BoardList.percent<=0 }">
	                            			<div class="noti-endtext">모집 예정</div>
	                            		</c:if>
	                            		<c:if test="${BoardList.percent>0 }">
		                            		<div class="noti-endtext">D-${BoardList.dday }</div>
	                            		</c:if>
                            		</c:if>
                    		</div>
                		</div>
                		</div>
                		                    	
                        </c:if>
                        
                        
                    	<c:if test="${'게시판' == fn:substring(name,leng-3,leng)}">
                    	<div class="col-xs-12 col-sm-12 col-lg-12 em">
							<div class="thumbnail text-center">
		                        <p style="font-size: 1.8vmin; height : 1.5em;"><strong>${BoardList.wrtbtTitle }</strong></p>
    	                    	<p class='max-lines'>${BoardList.wrtbtText }</p>
    	                    	<c:if test="${BoardList.count==0 }">
    	                    		<button class="btn">답변 하기</button>
    	                    	</c:if>
    	                    	<c:if test="${BoardList.count>0 }">
    	                    		<p class='max-lines'>${BoardList.subwrtbtText }</p>
    	                    	</c:if>
                        		
                    		</div>                  	
                    		</div>                  	
                        </c:if>
                    	
                 </c:if>
                 </c:forEach>
                </div>
                <div class="col-xs-4 col-sm-4 col-lg-4">
                  <c:forEach items="${BoardList }" var="BoardList" varStatus="status">
                   <c:if test="${BoardList.no%3 ==2 && calList.month==BoardList.month && calList.day==BoardList.day }"   >
                    	
                    	<c:set var="name" value="${BoardList.slctnNotiDstnct}"/>
                    	<c:set var="leng" value="${fn:length(name)}"/>
                    
                    	<c:if test="${BoardList.slctnNotiDstnct == '대학원' && BoardList.pchrgYn=='Y'}">
                    		<div class="col-xs-12 col-sm-12 col-lg-12 em">
                    		<div class="thumbnail text-center">
                        		<span class="w3-tag w3-display-topleft semester">${BoardList.year} / ${BoardList.slctnSemstr}</span>
                        		<img src="/net/resources/images/higrad-img/globalsymbol_korea2_large.gif" alt="${BoardList.major }" style="padding: 7% 5% 0 5%;">
                        		<h5><strong>${BoardList.lab }</strong></h5>
                        		<p>${BoardList.slctnTitle }</p>
                        		<div class="noti-period">
		                            <div class="w3-light-grey w3-tiny">
		                            <c:if test="${BoardList.percent<=0 }">
	                            		<div class="w3-container" style="width: 0%; height: 1px;"></div>
	                            	</c:if>
	                            	<c:if test="${BoardList.percent>0 }">
	                            		<div class="w3-container w3-black" style="width: ${BoardList.percent }%; height: 1px;"></div>
	                            	</c:if>
	                            	</div>
                        		</div>
                        		<div style="margin-bottom: -5%;">
		                            <div class="noti-hh"><i class="glyphicon glyphicon-paperclip"></i></div>
                            		<c:if test="${BoardList.percent<=0 }">
	                            			<div class="noti-endtext">모집 예정</div>
	                            		</c:if>
	                            		<c:if test="${BoardList.percent>0 }">
		                            		<div class="noti-endtext">D-${BoardList.dday }</div>
	                            		</c:if>
                        		</div>
                    		</div>
                    		</div>
                    	</c:if>
                    	
                    	<c:if test="${BoardList.slctnNotiDstnct == '대학원' && BoardList.pchrgYn=='N'}">
                    	<div class="col-xs-12 col-sm-12 col-lg-12 em">
                    		<div class="noti-default">
                        		<div class="noti-name" style="color: ${BoardList.symbolColorNm };">${BoardList.major } ${BoardList.lab }</div>
                        		<div class="noti-title">${BoardList.year }학년도 ${BoardList.slctnSemstr}</div>
                        		<div class="noti-subtitle" style="color: ${BoardList.symbolColorNm };">${BoardList.slctnTitle }</div>
                        		<div class="noti-period" style="color: ${BoardList.symbolColorNm };">
	                            	<div class="w3-light-grey w3-tiny">
		                            <c:if test="${BoardList.percent<=0 }">
	                            		<div class="w3-container" style="width: 0%; height: 1px;"></div>
	                            	</c:if>
	                            	<c:if test="${BoardList.percent>0 }">
	                            		<div class="w3-container w3-black" style="width: ${BoardList.percent }%; height: 1px;"></div>
	                            	</c:if>
	                            	</div>
                        		</div>
	                        	<div>
	    	                        <div class="noti-hh"><i class="glyphicon glyphicon-bookmark"></i> </div>
                            		<c:if test="${BoardList.percent<=0 }">
	                            			<div class="noti-endtext">모집 예정</div>
	                            		</c:if>
	                            		<c:if test="${BoardList.percent>0 }">
		                            		<div class="noti-endtext">D-${BoardList.dday }</div>
	                            		</c:if>
                        		</div>
                    		</div>
                    		</div>
                    	</c:if>
                    	
                    	
                    	<c:if test="${BoardList.slctnNotiDstnct == '연구실' && BoardList.pchrgYn=='Y'}">
                    	<div class="col-xs-12 col-sm-12 col-lg-12 em">
                    		<div class="thumbnail text-center">
                        		<img src="/net/resources/images/higrad-img/globalsymbol_korea2_large.gif" alt="${BoardList.lab }" style="padding: 5%">
                        		<h5 style="font-size: 1.8vmin;"><strong>${BoardList.lab }</strong></h5>
                        		<p style="font-size: 1.8vmin;">${BoardList.slctnTitle }</p>
                        		<div class="research-field">
                            		<c:forEach items="${BoardList.researchList }" var="resList" varStatus="status">
                            		<span class="w3-tag w3-black w3-tiny ">${resList.cdNm }</span>
                            		</c:forEach>
                        		</div>
                        		<div style="margin-bottom: -5%;">
                            		<div class="noti-hh"><i class="glyphicon glyphicon-paperclip"></i></div>
                            		<c:if test="${BoardList.slctnEndDt == '9999-12-31 00:00:00.0' }">
                            			<div class="noti-endtext">상시 모집</div>
                            		</c:if>
                            		
                            		<c:if test="${BoardList.slctnEndDt != '9999-12-31 00:00:00.0' }">
                            			<c:if test="${BoardList.percent<=0 }">
	                            			<div class="noti-endtext">모집 예정</div>
	                            		</c:if>
	                            		<c:if test="${BoardList.percent>0 }">
		                            		<div class="noti-endtext">D-${BoardList.dday }</div>
	                            		</c:if>
                            		</c:if>
                        		</div>
                    		</div>
                    		</div>

                    		
                    		
                    	</c:if>
                    	
                    	<c:if test="${BoardList.slctnNotiDstnct == '연구실' && BoardList.pchrgYn=='N'}">
                    	<div class="col-xs-12 col-sm-12 col-lg-12 em">
                    	<div class="noti-default">
                    		<div class="noti-name2" style="color: ${BoardList.symbolColorNm };"><i class="glyphicon glyphicon-bookmark"></i>
                        	${BoardList.university } ${BoardList.graduate } ${BoardList.lab }   
                    		</div>
                    		<div class="noti-title">${BoardList.year }학년도 ${BoardList.lab }</div>
                    		<div class="noti-subtitle" style="color: ${BoardList.symbolColorNm };">${BoardList.slctnTitle }</div>
                    		<div>
                        		<div class="noti-hh"><i class="glyphicon glyphicon-paperclip"></i></div>
                        		<c:if test="${BoardList.slctnEndDt == '9999-12-31 00:00:00.0' }">
                            			<div class="noti-endtext">상시 모집</div>
                            		</c:if>
                            		
                            		<c:if test="${BoardList.slctnEndDt != '9999-12-31 00:00:00.0' }">
                            			<c:if test="${BoardList.percent<=0 }">
	                            			<div class="noti-endtext">모집 예정</div>
	                            		</c:if>
	                            		<c:if test="${BoardList.percent>0 }">
		                            		<div class="noti-endtext">D-${BoardList.dday }</div>
	                            		</c:if>
                            		</c:if>
                    		</div>
                		</div>
                		</div>
                		                    	
                        </c:if>
                        
                        
                    	<c:if test="${'게시판' == fn:substring(name,leng-3,leng)}">
                    	<div class="col-xs-12 col-sm-12 col-lg-12 em">
							<div class="thumbnail text-center">
		                        <p style="font-size: 1.8vmin; height : 1.5em;"><strong>${BoardList.wrtbtTitle }</strong></p>
    	                    	<p class='max-lines'>${BoardList.wrtbtText }</p>
    	                    	<c:if test="${BoardList.count==0 }">
    	                    		<button class="btn">답변 하기</button>
    	                    	</c:if>
    	                    	<c:if test="${BoardList.count>0 }">
    	                    		<p class='max-lines'>${BoardList.subwrtbtText }</p>
    	                    	</c:if>
                        		
                    		</div>                  	
                    		</div>                  	
                        </c:if>
                    	
                 </c:if>
                 </c:forEach>
                </div>
                <div class="col-xs-4 col-sm-4 col-lg-4">
                  <c:forEach items="${BoardList }" var="BoardList" varStatus="status">
                    <c:if test="${BoardList.no%3 ==0 && calList.month==BoardList.month && calList.day==BoardList.day }"   >
                    	
                    	<c:set var="name" value="${BoardList.slctnNotiDstnct}"/>
                    	<c:set var="leng" value="${fn:length(name)}"/>
                    
                    	<c:if test="${BoardList.slctnNotiDstnct == '대학원' && BoardList.pchrgYn=='Y'}">
                    		<div class="col-xs-12 col-sm-12 col-lg-12 em">
                    		<div class="thumbnail text-center">
                        		<span class="w3-tag w3-display-topleft semester">${BoardList.year} / ${BoardList.slctnSemstr}</span>
                        		<img src="/net/resources/images/higrad-img/globalsymbol_korea2_large.gif" alt="${BoardList.major }" style="padding: 7% 5% 0 5%;">
                        		<h5><strong>${BoardList.lab }</strong></h5>
                        		<p>${BoardList.slctnTitle }</p>
                        		<div class="noti-period">
		                            <div class="w3-light-grey w3-tiny">
		                            <c:if test="${BoardList.percent<=0 }">
	                            		<div class="w3-container" style="width: 0%; height: 1px;"></div>
	                            	</c:if>
	                            	<c:if test="${BoardList.percent>0 }">
	                            		<div class="w3-container w3-black" style="width: ${BoardList.percent }%; height: 1px;"></div>
	                            	</c:if>
	                            	</div>
                        		</div>
                        		<div style="margin-bottom: -5%;">
		                            <div class="noti-hh"><i class="glyphicon glyphicon-paperclip"></i></div>
                            		<c:if test="${BoardList.percent<=0 }">
	                            			<div class="noti-endtext">모집 예정</div>
	                            		</c:if>
	                            		<c:if test="${BoardList.percent>0 }">
		                            		<div class="noti-endtext">D-${BoardList.dday }</div>
	                            		</c:if>
                        		</div>
                    		</div>
                    		</div>
                    	</c:if>
                    	
                    	<c:if test="${BoardList.slctnNotiDstnct == '대학원' && BoardList.pchrgYn=='N'}">
                    	<div class="col-xs-12 col-sm-12 col-lg-12 em">
                    		<div class="noti-default">
                        		<div class="noti-name" style="color: ${BoardList.symbolColorNm };">${BoardList.major } ${BoardList.lab }</div>
                        		<div class="noti-title">${BoardList.year }학년도 ${BoardList.slctnSemstr}</div>
                        		<div class="noti-subtitle" style="color: ${BoardList.symbolColorNm };">${BoardList.slctnTitle }</div>
                        		<div class="noti-period" style="color: ${BoardList.symbolColorNm };">
	                            	<div class="w3-light-grey w3-tiny">
		                            <c:if test="${BoardList.percent<=0 }">
	                            		<div class="w3-container" style="width: 0%; height: 1px;"></div>
	                            	</c:if>
	                            	<c:if test="${BoardList.percent>0 }">
	                            		<div class="w3-container w3-black" style="width: ${BoardList.percent }%; height: 1px;"></div>
	                            	</c:if>
	                            	</div>
                        		</div>
	                        	<div>
	    	                        <div class="noti-hh"><i class="glyphicon glyphicon-bookmark"></i> </div>
                            		<c:if test="${BoardList.percent<=0 }">
	                            			<div class="noti-endtext">모집 예정</div>
	                            		</c:if>
	                            		<c:if test="${BoardList.percent>0 }">
		                            		<div class="noti-endtext">D-${BoardList.dday }</div>
	                            		</c:if>
                        		</div>
                    		</div>
                    		</div>
                    	</c:if>
                    	
                    	
                    	<c:if test="${BoardList.slctnNotiDstnct == '연구실' && BoardList.pchrgYn=='Y'}">
                    	<div class="col-xs-12 col-sm-12 col-lg-12 em">
                    		<div class="thumbnail text-center">
                        		<img src="/net/resources/images/higrad-img/globalsymbol_korea2_large.gif" alt="${BoardList.lab }" style="padding: 5%">
                        		<h5 style="font-size: 1.8vmin;"><strong>${BoardList.lab }</strong></h5>
                        		<p style="font-size: 1.8vmin;">${BoardList.slctnTitle }</p>
                        		<div class="research-field">
                            		<c:forEach items="${BoardList.researchList }" var="resList" varStatus="status">
                            		<span class="w3-tag w3-black w3-tiny ">${resList.cdNm }</span>
                            		</c:forEach>
                        		</div>
                        		<div style="margin-bottom: -5%;">
                            		<div class="noti-hh"><i class="glyphicon glyphicon-paperclip"></i></div>
                            		<c:if test="${BoardList.slctnEndDt == '9999-12-31 00:00:00.0' }">
                            			<div class="noti-endtext">상시 모집</div>
                            		</c:if>
                            		
                            		<c:if test="${BoardList.slctnEndDt != '9999-12-31 00:00:00.0' }">
                            			<c:if test="${BoardList.percent<=0 }">
	                            			<div class="noti-endtext">모집 예정</div>
	                            		</c:if>
	                            		<c:if test="${BoardList.percent>0 }">
		                            		<div class="noti-endtext">D-${BoardList.dday }</div>
	                            		</c:if>
                            		</c:if>
                        		</div>
                    		</div>
                    	</div>

                    		
                    		
                    	</c:if>
                    	
                    	<c:if test="${BoardList.slctnNotiDstnct == '연구실' && BoardList.pchrgYn=='N'}">
                    	<div class="col-xs-12 col-sm-12 col-lg-12 em">
                    	<div class="noti-default">
                    		<div class="noti-name2" style="color: ${BoardList.symbolColorNm };"><i class="glyphicon glyphicon-bookmark"></i>
                        	${BoardList.university } ${BoardList.graduate } ${BoardList.lab }   
                    		</div>
                    		<div class="noti-title">${BoardList.year }학년도 ${BoardList.lab }</div>
                    		<div class="noti-subtitle" style="color: ${BoardList.symbolColorNm };">${BoardList.slctnTitle }</div>
                    		<div>
                        		<div class="noti-hh"><i class="glyphicon glyphicon-paperclip"></i></div>
                        		<c:if test="${BoardList.slctnEndDt == '9999-12-31 00:00:00.0' }">
                            			<div class="noti-endtext">상시 모집</div>
                            		</c:if>
                            		
                            		<c:if test="${BoardList.slctnEndDt != '9999-12-31 00:00:00.0' }">
                            			<c:if test="${BoardList.percent<=0 }">
	                            			<div class="noti-endtext">모집 예정</div>
	                            		</c:if>
	                            		<c:if test="${BoardList.percent>0 }">
		                            		<div class="noti-endtext">D-${BoardList.dday }</div>
	                            		</c:if>
                            		</c:if>
                    		</div>
                		</div>
                		</div>
                		                    	
                        </c:if>
                        
                        
                    	<c:if test="${'게시판' == fn:substring(name,leng-3,leng)}">
                    	<div class="col-xs-12 col-sm-12 col-lg-12 em">
							<div class="thumbnail text-center">
		                        <p style="font-size: 1.8vmin; height : 1.5em;"><strong>${BoardList.wrtbtTitle }</strong></p>
    	                    	<p class='max-lines'>${BoardList.wrtbtText }</p>
    	                    	<c:if test="${BoardList.count==0 }">
    	                    		<button class="btn">답변 하기</button>
    	                    	</c:if>
    	                    	<c:if test="${BoardList.count>0 }">
    	                    		<p class='max-lines'>${BoardList.subwrtbtText }</p>
    	                    	</c:if>
                        		
                    		</div>                 	
                    		</div>                  	
                        </c:if>
                    	
                 </c:if>
                 </c:forEach>
                </div>
                
            </div>
        </div>
    	
    	</c:forEach>

    </div>
</div>

</body>
</html>