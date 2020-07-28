<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

	<header>
        <h1><a href="#">ZERO STRESS</a></h1>
        <div class="logo-box">
            <ul class="login-register">
            <li>
            <c:choose>
			<c:when test="${sessionScope.userId == null }" >  
                <p data-toggle="modal" data-target="#modal-login">로그인</p>
                <p data-toggle="modal" data-target="#modal-regist">회원가입</p>
			</c:when>       
            <c:otherwise>
            	<p data-toggle="modal" data-target="#modal-update">회원정보수정</p>
                <p data-toggle="modal" data-target="#modal-delete">회원탈퇴</p>
            	<p><a href="${pageContext.request.contextPath }/users/userLogout">로그아웃</a></p>
            </c:otherwise>     
            </c:choose>
            
            
            <li>
            </ul>
            <form class="navbar-form navbar-right" action="">
                <span class="header-span">지도 찾기</span>&nbsp;&nbsp;&nbsp;
                <div class="input-group">
                    <input type="text" class="form-control" placeholder="Search">
                    <div class="input-group-btn">
                        <button class="btn btn-primary" type="submit">검색</button>
                    </div>
                </div>
            </form>  
        </div>
        <nav class="navbar navbar-inverse">
           
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>

            <div class="collapse navbar-collapse" id="myNavbar">
                <div class="container-fluid">
                    <ul class="navbox">
                    	<li>
                        <div class="dropdown">
                            <p class="dropdownbtn" type="button" data-toggle="dropdown">추천</p>
                            <ul class="dropdown-menu">
                                <li><a href="#">에디터 추천 여행</a></li>
                                <li><a href="#">서울도보해설관광</a></li>
                                <li><a href="#">서울시티투어버스</a></li>
                            </ul>
                        </div>
                        <div class="dropdown">
                            <p class="dropdownbtn" type="button" data-toggle="dropdown">여행지</p>
                            <ul class="dropdown-menu">
                                <li><a href="#">명소</a></li>
                                <li><a href="#">자연&관광</a></li>
                                <li><a href="#">음식</a></li>
                            </ul>
                        </div>
                        <div class="dropdown">
                            <p class="dropdownbtn" type="button" data-toggle="dropdown">지역</p>
                            <ul class="dropdown-menu">
                                <li><a href="#">강남</a></li>
                                <li><a href="#">광화문</a></li>
                                <li><a href="#">이태원</a></li>
                            </ul>
                        </div>
                        <div class="dropdown">
                            <p class="dropdownbtn" type="button" data-toggle="dropdown">여행정보</p>
                            <ul class="dropdown-menu">
                                <li><a href="#">교통</a></li>
                                <li><a href="#">날씨</a></li>
                                <li><a href="#">지도</a></li>
                            </ul>
                        </div>
                    	</li>
                    </ul>
                </div>
            </div>   
        </nav>  
    </header>
	

</html>