<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<script src="<c:url value="/js/jquery-1.7.2.min.js"/>"></script>
<div id="header">
	<img width="289" src="<c:url value="/images/beida/logo.png"/>" alt="" />
	<div id="navi">
		<a href="${pageContext.request.contextPath}/">首页</a> | <a
			href="${pageContext.request.contextPath}/jgjj">机构</a> | <a
			href="${pageContext.request.contextPath}/bbs/notice">通知公告</a>| <a
			href="${pageContext.request.contextPath}/bbs/fgzd/gjzd"
			onmouseout="$('.yybc').hide();" onmouseover="$('.yybc').show();">法规制度
		</a> | <a href="${pageContext.request.contextPath}/sjxx">书记信箱 </a>| <a
			href="${pageContext.request.contextPath}/xzxx">校长信箱 </a> | <a
			href="${pageContext.request.contextPath}/bbs/llyj">理论研究</a> | <a
			href="${pageContext.request.contextPath}/bbs/wsyy"
			onmouseout="$('.wsYy').hide();" onmouseover="$('.wsYy').show();">网上预约</a>
		| <a href="${pageContext.request.contextPath}/bbs/xzzq">下载专区</a>
		| <a href="${pageContext.request.contextPath}/lxwm">联系我们</a>
	</div>
	<div class="yybc"
		style="position: absolute; top: 80px; font-size: 13px; display: none; z-index: 80; background-color: #FFF; left: 680px;"
		onmouseover="$('.yybc').show();" onmouseout="$('.yybc').hide();">
		<a href="${pageContext.request.contextPath}/bbs/fgzd/gjzd">国家法律法规</a><br>
		<a
			href="${pageContext.request.contextPath}/bbs/fgzd/xnzd">校内规章制度</a>
	</div>
	<div onmouseout="$('.wsYy').hide();" onmouseover="$('.wsYy').show();"
		style="position: absolute; top: 80px; font-size: 13px; z-index: 80; background-color: rgb(255, 255, 255); display: none; width: 130px; left: 928px;"
		class="wsYy">
		<a href="${pageContext.request.contextPath}/bbs/wsyy">网上预约</a><br>
		<a href="${pageContext.request.contextPath}/bbs/wsyy">校领导工作日预约</a>
	</div>
</div>