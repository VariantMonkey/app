<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>	
<!-- begin #header -->
<div id="header">
	<div class="logoContainer">
		<h3>logo</h3>
		<div class="slogan">卓客</div>
	</div>
	<div class="icons">
		<ul>
			<li><c:out value="${sessionScope.userid}" /></li>
			<li><a href="<c:url value="/index?lang=en"/>"><img src="http://images.apple.com/global/elements/flags/30x30/usa.png" alt="USA" /></a></li>
			<li><a href="<c:url value="/index?lang=ko"/>"><img src="http://images.apple.com/global/elements/flags/30x30/south_korea.png" alt="KOREA" /></a></li>
			<li><a href=""><img src="<c:url value="/images/delicious.png"/>" alt="" /></a></li>
			<li><a href=""><img src="<c:url value="/images/facebook.png"/>" alt="" /></a></li>
			<li><a href=""><img src="<c:url value="/images/feed.png"/>" alt="" /></a></li>
			<li><a href=""><img src="<c:url value="/images/flickr.png"/>" alt="" /></a></li>
			<li><a href=""><img src="<c:url value="/images/linkedin.png"/>" alt="" /></a></li>
			<li><a href=""><img src="<c:url value="/images/myspace.png"/>" alt="" /></a></li>
			<li><a href=""><img src="<c:url value="/images/stumble.png"/>" alt="" /></a></li>
		</ul>
	</div>
	<div class="clearfloat"></div>
	<div class="menu">
		<ul>
			
			<li <c:if test="${menu=='index'}">id="active"</c:if> ><a href="<c:url value="/index"/>">主页</a></li>
			<li <c:if test="${menu=='bbs'}">id="active"</c:if> ><a href="<c:url value="/bbs/1/list/1"/>">bbs</a></li>
			
			<c:choose>
				<c:when test="${not empty sessionScope.userid}">
				<li <c:if test="${menu=='signout'}">id="active"</c:if> ><a href="<c:url value="/user/signout"/>?currentUrl=${currentUrl}">退出</a></li>
				</c:when>
				<c:otherwise>
				<li <c:if test="${menu=='signup'}">id="active"</c:if> ><a href="<c:url value="/user/signup"/>?currentUrl=${currentUrl}">注册</a></li>
				<li <c:if test="${menu=='signin'}">id="active"</c:if> ><a href="<c:url value="/user/signin"/>?currentUrl=${currentUrl}">登录</a></li>
				</c:otherwise>
				
			</c:choose>
			
			<li <c:if test="${menu=='about'}">id="active"</c:if> ><a href="<c:url value="/about"/>">关于我们</a></li>
			<li <c:if test="${menu=='contact'}">id="active"</c:if> ><a href="<c:url value="/contact"/>">联系我们</a></li>
			<li <c:if test="${menu=='location'}">id="active"</c:if> ><a href="<c:url value="/location"/>">地址</a></li>
		</ul>
	</div>
	<div class="headerPicContainer">
		<div class="headerPicBody">
			<div class="headerText1">
				标题
			</div>
			<div class="headerText2">
				子标题
			</div>
		</div>
		<div class="clearfloat"></div>
	</div>
</div>
<!-- end #header -->