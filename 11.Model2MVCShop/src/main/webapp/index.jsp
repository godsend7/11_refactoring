<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>


<!--  ///////////////////////// JSTL  ////////////////////////// -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- ///////////////////////////// 로그인시 Forward  /////////////////////////////////////// -->
 <c:if test="${ ! empty user }">
 	<jsp:forward page="main.jsp"/>
 </c:if>
 <!-- //////////////////////////////////////////////////////////////////////////////////////////////////// -->


<!DOCTYPE html>

<html lang="ko">
	
<head>
	<meta charset="EUC-KR">
	
	<title>비트캠프 종각점</title>
	
	<!-- 참조 : http://getbootstrap.com/css/   -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<!--  ///////////////////////// Bootstrap, jQuery CDN ////////////////////////// -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
	
	<!--  ///////////////////////// CSS ////////////////////////// -->
	<style></style>
   	
   	<!--  ///////////////////////// JavaScript ////////////////////////// -->
	<script type="text/javascript">
		
		//============= 회원가입 화면이동 =============
		$( function() {
			//==> 추가된부분 : "addUser"  Event 연결
			$("a[href='#' ]:contains('회원가입')").on("click" , function() {
				self.location = "/user/addUser"
			});
		});
		
		//============= 로그인 화면이동 =============
		$( function() {
			//==> 추가된부분 : "login"  Event 연결
			$("a[href='#' ]:contains('로 그 인')").on("click" , function() {
				self.location = "/user/login"
			});
		});
		
		//============= 상품검색 화면이동 =============
		$( function() {
			//==> 추가된부분 : "listproduct"  Event 연결
			$("a[href='#' ]:contains('상품검색')").on("click" , function() {
				self.location = "/product/listProduct?menu=search"
			});
			
		});
		
	</script>	
	
</head>

<body style="background-color:lightgray;">

	<!-- ToolBar Start /////////////////////////////////////-->
	<div class="navbar navbar-inverse navbar-default">
		
        <div class="container">
        
        	<a class="navbar-brand" href="#">비트캠프 종각점</a>
			
			<!-- toolBar Button Start //////////////////////// -->
			<div class="navbar-header">
			    <button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#target">
			        <span class="sr-only">Toggle navigation</span>
			        <span class="icon-bar"></span>
			        <span class="icon-bar"></span>
			        <span class="icon-bar"></span>
			    </button>
			</div>
			<!-- toolBar Button End //////////////////////// -->
			
			<div class="collapse navbar-collapse"  id="target">
	             <ul class="nav navbar-nav navbar-right">
	                 <li><a href="#">회원가입</a></li>
	                 <li><a href="#">로 그 인</a></li>
	           	</ul>
	       </div>
   		
   		</div>
   	</div>
   	<!-- ToolBar End /////////////////////////////////////-->
   	
	<!--  화면구성 div Start /////////////////////////////////////-->
	<div class="container">
		
		<!-- 다단레이아웃  Start /////////////////////////////////////-->
		<div class="row">
	
			<!--  Menu 구성 Start /////////////////////////////////////-->     	
			<div class="col-md-3">
		        
		       	<!--  회원관리 목록에 제목 -->
				<div class="panel panel-default">
					<div class="panel-heading">
						<i class="glyphicon glyphicon-user"></i> &nbsp;회원
         			</div>
         			<!--  회원관리 아이템 -->
					<ul class="list-group">
						 <li class="list-group-item">
						 	<a href="#"><del>개인정보조회</del></a> <!-- <i class="glyphicon glyphicon-remove-circle"></i> -->
						 </li>
						 <li class="list-group-item">
						 	<a href="#"><del>회원정보조회</del></a> <!-- <i class="glyphicon glyphicon-remove-circle"></i> -->
						 </li>
					</ul>
		        </div>
               
               
				<div class="panel panel-default">
					<div class="panel-heading">
						<i class="glyphicon glyphicon-gift"></i> &nbsp;판매상품
         			</div>
					<ul class="list-group">
						 <li class="list-group-item">
						 	<a href="#"><del>판매상품등록</del></a> <!-- <i class="glyphicon glyphicon-remove-circle"></i> -->
						 </li>
						 <li class="list-group-item">
						 	<a href="#"><del>판매상품관리</del></a> <!-- <i class="glyphicon glyphicon-remove-circle"></i> -->
						 </li>
					</ul>
		        </div>
               
               
				<div class="panel panel-default">
					<div class="panel-heading">
						<i class="glyphicon glyphicon-shopping-cart"></i> &nbsp;상품구매
	    			</div>
					<ul class="list-group">
						 <li class="list-group-item"><a href="#">상품검색</a></li>
						  <li class="list-group-item">
						  	<a href="#"><del>구매이력조회</del></a> <!-- <i class="glyphicon glyphicon-remove-circle"></i> -->
						  </li>
						 <li class="list-group-item">
						 	<a href="#">최근본상품</a> <!-- <i class="glyphicon glyphicon-remove-circle"></i> -->
						 </li>
					</ul>
				</div>
				
			</div>
			<!--  Menu 구성 end /////////////////////////////////////-->   

	 	 	<!--  Main start /////////////////////////////////////-->   		
	 	 	<div class="col-md-9">
				<div class="jumbotron" style="color: Navy;">
			  		<h1 style="text-align:center;" class="text-success">비트캠프 종각점</h1><hr/><br/>
			  		<div style="text-align : center;">
			  			<img src="images/bitcamp.png" alt="..." class="img-circle">
			  		</div><br/>
			  		<p style="text-align:right;">로그인 후 사용가능...</p>
			  		<p style="text-align:center;">로그인 전에는 검색만 가능합니다!</p>
			  		<p>회원가입좀 하세요...</p><hr/><br/>
			  		
			  		<div class="text-center">
			  			<a class="btn btn-default btn-lg btn-block" href="#" role="button" style="color: Navy;">회원가입</a>
			  			<a class="btn btn-primary btn-lg btn-block" href="#" role="button">로 그 인</a>
			  		</div>
			  	
			  	</div>
	        </div>
	   	 	<!--  Main end /////////////////////////////////////-->   		
	 	 	
		</div>
		<!-- 다단레이아웃  end /////////////////////////////////////-->
		
	</div>
	<!--  화면구성 div end /////////////////////////////////////-->

</body>

</html>