<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <%@ taglib prefix="fmt" uri=http://java.sun.com/jsp/jstl/fmt %> --%>
<%@ taglib prefix='fmt' uri="http://java.sun.com/jsp/jstl/fmt"%>
<div class="container">
	<div id="banner">
		<img src="<c:url value="/images/beida/img_2.jpg"/>" />
	</div>
	<div id="content">
		<img src="<c:url value="/images/beida/imag6.jpg"/>" alt=""
			class="zuoTu" />
		<div id="sidebar">
			<div id="sidebar-title">法规制度</div>
			<div id="sidebar-list">
				<ul>
					<li style="padding-left: 1px;"><a id="gjzdlj"
						href="${pageContext.request.contextPath}/bbs/fgzd/gjzd">国家法律法规</a></li>


					<li style="padding-left: 1px;"><a  id="xnzdlj"
						href="${pageContext.request.contextPath}/bbs/fgzd/xnzd">校内规章制度</a></li>



				</ul>
			</div>
		</div>
		<script type="text/javascript">
		  var bbsId=${bbsnum};
		  if(bbsId==7){
			  $("#gjzdlj").css("color","#336666");
		  }else{
			  $("#xnzdlj").css("color","#336666");
		  }
		</script>
		<div id="content-main">
			<div id="content-main-title">
				<img src="<c:url value="/images/beida/diamond.png"/>" alt="" />${bbsname}
			</div>
			<div id="content-main-breadcrumb">首页 &gt;法规制度 &gt; ${bbsname}</div>
			<div id="content-main-line"></div>
			<div id="content-main-list">
				<ul>
					<c:choose>
						<c:when test="${not empty bbss}">
							<c:forEach var="detail" items="${bbss}">
								<li><a
									href="<c:url value="/bbs"/>/<c:out value="${bbsnum}"/>/detail/<c:out value="${detail.num}"/>"><c:out
											value="${detail.subject}" /></a><span
									style="float: right; margin-right: 100px;"> <fmt:formatDate
											value="${detail.regdate}" pattern="yyyy.MM.dd  HH:mm:ss" />
								</span></li>
							</c:forEach>
						</c:when>
					</c:choose>
				</ul>
			</div>
			<br class="clearfloat" />
			<div class="welcome">
				<p>
					<c:out value="${paging}" escapeXml="false" />
				</p>
			</div>
			<br class="clearfloat" />
		</div>

	</div>
</div>

