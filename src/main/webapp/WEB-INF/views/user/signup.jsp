<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<div class="aboutUs">
	<h1>登录</h1>


	<form:form method="post" action="signup" commandName="user" enctype="multipart/form-data">
		<table>
			<tr>
				<td width="20%">账号 : </td><td width="20%"> <form:input path="userid" /> </td><td> <font color="red"><form:errors path="userid" /></font></td>
			</tr>
			<tr>
				<td>昵称: </td><td> <form:input path="name" /> </td><td>  <font color="red"><form:errors path="name" /></font></td>
			</tr>
			<tr>
				<td>密码 : </td><td> <form:input path="password" /> </td><td>  <font color="red"><form:errors path="password" /></font></td>
			</tr>
			<tr>
				<td>手机号 : </td><td> <form:input path="phone" /> </td><td>  <font color="red"><form:errors path="phone" /></font></td>
			</tr>
			<tr>
				<td>邮箱地址 : </td><td> <form:input path="email" /> </td><td>  <font color="red"><form:errors path="email" /></font></td>
			</tr>
			<tr>
				<td>头像 : </td><td> <input type="file" name="file" id="file"></input> </td><td> </td>
			</tr>
			<tr>
				<td> </td><td><input type="submit" value="Submit" /> </td><td> </td>
			</tr>
		</table>
		<input type="hidden" name="currentUrl" value="${currentUrl}"/>
	</form:form>
</div>

<script>
	document.getElementById("userid").focus();
</script>

