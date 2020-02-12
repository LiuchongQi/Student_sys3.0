<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="AllCss.css" type="text/css" rel="stylesheet" />
</head>
<c:if test="${empty loginName}">
	<c:redirect url="index.jsp"></c:redirect>
</c:if>
<c:if test="${!(perType eq 'teacher')}">
	<c:redirect url="index.jsp"></c:redirect>
</c:if>
<body>
	<!-- 左侧功能菜单 -->
	<div class="menu">
		<ul>
			<br>
			<br>
			<br>
			<br>
			<li><a href="/Student_sys3.0/queryTeacherInfo.do" target="center" class="point">我的信息</a></li>
			<br>
			<br>
			<li><a href="/Student_sys3.0/queryTeacherCourse.do" target="center" class="point">我的课表</a></li>
			<br>
			<br>
			<li><a href="Change_pass.jsp" target="center" class="point">修改密码</a></li>
			<br>
			<br>

		</ul>
	</div>
</body>
</html>