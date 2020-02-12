<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<c:if test="${empty loginName}">
	<c:redirect url="index.jsp"></c:redirect>
</c:if>
<c:if test="${!(perType eq 'student')}">
	<c:redirect url="index.jsp"></c:redirect>
</c:if>
<body>
	<!-- 我的信息 -->
	<div class="main_box">
		<table border="0px" width="100%" height="50px">
			<thead>
				<tr>
					<th colspan="7" bgcolor="#DCDCDC" align="left">我的信息</th>
				</tr>
			</thead>
			<tbody bgcolor="#F5F5F5">
				<tr>
					<td width="20%" align="right">学号：</td>
					<td>${Queryme_student.username }</td>
				</tr>
				<tr>
					<td width="15%" align="right">姓名：</td>
					<td>${Queryme_student.sname }</td>
				</tr>
				<tr>
					<td width="10%" align="right">性别：</td>
					<td>${Queryme_student.ssex }</td>
				</tr>
				<tr>
					<td width="10%" align="right">出生年：</td>
					<td>${Queryme_student.sage }</td>
				</tr>
				<tr>
					<td width="15%" align="right">专业：</td>
					<td>${Queryme_student.sdept }</td>
				</tr>
				<tr>
					<td width="15%" align="right">班级：</td>
					<td>${Queryme_student.sclass }</td>
				</tr>
				<tr>
					<td width="15%" align="right">入学年份：</td>
					<td>${Queryme_student.grade }</td>
				</tr>
			</tbody>
		</table>
		<HR style="FILTER: alpha(opacity = 0, finishopacity = 100, style = 1)"
			width="100%" color="grey" SIZE="3">
	</div>
</body>
</html>