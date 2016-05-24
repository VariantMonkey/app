<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="memo">
<h3>bbs列表</h3>
<c:choose>
	<c:when test="${not empty configs}">
		<c:forEach var="detail" items="${configs}">
				
				<c:if test="${bbsnum==detail.bbsnum}">
				<b>
				</c:if>
				<a href="<c:url value="/bbs/"/><c:out value="${detail.bbsnum}"/>/list/1" />
				<c:out value="${detail.bbsname}"/>
				</a>
				<c:if test="${bbsnum==detail.bbsnum}">
				</b>
				</c:if>
				 | 
		</c:forEach>
	</c:when>
	<c:otherwise>
		<p>论坛.</p>
	</c:otherwise>
</c:choose>
</div>

<input type="button" value="新建" class="buttonStyle"
	onClick="location.href='<c:url value='/bbs/'/>${bbsnum}/form'" />

<c:choose>
	<c:when test="${listtypenum == 1}">
		<div class="content">
			<h3>
				<c:out value="${bbsname}" />
			</h3>

			<c:choose>
				<c:when test="${not empty bbss}">
					<table>
						<tbody>
							<tr>
								<th>编号</th>
								<th width="60%">标题</th>
								<th>日期</th>
								<th>作者</th>
								<th>浏览次数</th>
							</tr>
							<c:forEach var="detail" items="${bbss}">
								<tr>
									<td><c:out value="${detail.num}" /></td>
									<td>[<a
										href="<c:url value="/bbs"/>/<c:out value="${bbsnum}"/>/detail/<c:out value="${detail.num}"/>"><c:out
												value="${detail.config.bbsname}" /></a>] <a
										href="<c:url value="/bbs"/>/<c:out value="${bbsnum}"/>/detail/<c:out value="${detail.num}"/>"><c:out
												value="${detail.subject}" /></a>
									</td>
									<td><c:out value="${detail.regdate}" /></td>
									<td><c:out value="${detail.userid}" /></td>
									<td><c:out value="${detail.count}" /></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</c:when>
				<c:otherwise>
					<p>没有注册.</p>
				</c:otherwise>
			</c:choose>

		</div>

	</c:when>
	<c:when test="${listtypenum == 2}">
		<h3>
			<c:out value="${bbsname}" />
		</h3>
		
		<c:choose>
			<c:when test="${not empty bbss}">
				<div class="boxes">
					<c:forEach var="detail" items="${bbss}">
						<div class="box">
							<h3>
								<img width="273" height="198" src="<c:url value="/file/image"/>/bbs/<c:out value="${bbsnum}"/>/<c:out value="${detail.num}"/>" alt="" />
								<c:out value="${detail.num}" />
								<c:out value="${detail.subject}" />
							</h3>
							<p>
								<c:out value="${detail.content}" />
							</p>
							<div class="boxButton">
								<input type="button" value="DETAILS..." class="buttonStyle"
									onClick="location.href='<c:url value="/bbs"/>/<c:out value="${bbsnum}"/>/detail/<c:out value="${detail.num}"/>'" />
							</div>
						</div>
					</c:forEach>
				</div>
			</c:when>
			<c:otherwise>
				<p>没有注册.</p>
			</c:otherwise>
		</c:choose>

	</c:when>

	<c:otherwise>
	</c:otherwise>
</c:choose>




<br class="clearfloat" />

<div class="welcome">
	<p>
		<c:out value="${paging}" escapeXml="false" />
	</p>
</div>

<br class="clearfloat" />