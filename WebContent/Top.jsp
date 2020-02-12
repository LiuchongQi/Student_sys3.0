<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link href="AllCss.css" type="text/css" rel="stylesheet" />
</head>
<c:if test="${empty loginName}">
	<c:redirect url="index.jsp"></c:redirect>
</c:if>
<body>
	<!-- 顶部条栏 -->
	<div id="head">
		<font color="white" id="h_w"><br> <br>&nbsp;&nbsp;&nbsp;&nbsp;学&nbsp;生&nbsp;选&nbsp;课&nbsp;系&nbsp;统</font>
		<p align="right">
			<font color="white">当前用户：${loginName }&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font>
		</p>
		<br>
		<p align="right">
			<a href='Logout.do' target="allPage"
				style="text-decoration: none; color: white">退出登录&nbsp;&nbsp;</a>
		</p>

	</div>

</body>
</html>