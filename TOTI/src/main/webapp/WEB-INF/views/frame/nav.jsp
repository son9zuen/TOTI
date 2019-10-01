<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<header id="header">
	<div class="navbar navbar-inverse" role="banner">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<!-- logo -->
				<a class="navbar-brand" href="index.html">
					<h1>
						<img height="80" src='<c:url value="/images/toti_logo.png"/>' alt="logo">
					</h1>
				</a>
			</div>
			<!-- nav -->
			<div class="collapse navbar-collapse">
				<ul class="nav navbar-nav navbar-right">
					<!-- 로그인전 nav-->
					<li><a href="index.html">분야선택</a></li>
					<li><a href="index.html">멘토찾기</a></li>
					<li><a href="index.html">로그인</a></li>
					<li class="active"><a href="index.html">회원가입</a></li>

					<!-- 멘티 로그인 -->
					<!--
                        <li><a href="index.html">분야선택</a></li>
                        <li><a href="index.html">보낸요청</a></li>
                        <li><a href="index.html">채팅</a></li>
                        <li><a href="index.html">멘토찾기</a></li>
                        <li class="dropdown"><a href="#">OO 멘티님<i class="fa fa-angle-down"></i></a>
                            <ul role="menu" class="sub-menu">
                               <li style="padding: 5px 0 10px 15px">
                                  <div>
                                       안녕하세요, OO님
                                  </div>
                                </li>
                                <li><a href="aboutus.html">보낸요청</a></li>
                                <li><a href="aboutus2.html">설정</a></li>
                                <hr>
                                <li><a href="service.html">멘토로 전환</a></li>
                                <li><a href="pricing.html">로그아웃</a></li>
                            </ul>
                        </li>
                        
                        <!-- 멘토 로그인 -->
					<!--
                        <li><a href="index.html">받은요청</a></li>
                        <li><a href="index.html">채팅</a></li>
                        <li><a href="index.html">프로필</a></li>
                        <li class="dropdown"><a href="#">OO 멘토님<i class="fa fa-angle-down"></i></a>
                            <ul role="menu" class="sub-menu">
                               <li style="padding: 5px 0 10px 15px">
                                   <div>안녕하세요, OO님</div>
                                   <div>★ 평점 5.0 | 리뷰 1</div>
                                </li>
                                <li><a href="aboutus.html">프로필 관리</a></li>
                                <li><a href="aboutus2.html">설정</a></li>
                                <hr>
                                <li><a href="service.html">고객으로 전환</a></li>
                                <li><a href="pricing.html">로그아웃</a></li>
                            </ul>
                        </li>
                        -->
				</ul>
			</div>
			<div class="search">
				<form role="form">
					<i class="fa fa-search"></i>
					<div class="field-toggle">
						<input style="font-size: 13px; width: 250px" type="text"
							class="search-form" autocomplete="off"
							placeholder="원하는 분야를 검색하세요.">
					</div>
				</form>
			</div>
		</div>
	</div>
</header>