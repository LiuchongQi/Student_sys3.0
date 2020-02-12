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
<c:if test="${!(perType eq 'teacher')}">
	<c:redirect url="index.jsp"></c:redirect>
</c:if>
<body>
	<!-- 我的信息 -->
	<div class="main_box">
		<table border="0px" width="100%" height="50px">
			<thead>
				<tr>
					<th colspan="2" bgcolor="#DCDCDC" align="left">我的信息</th>
				</tr>
			</thead>
			<tbody bgcolor="#F5F5F5">
				<tr>
					<td width="40%" align="right">教师号：</td>
					<td>${Queryme_teacher.username}</td>
				</tr>
				<tr>
					<td width="40%" align="right">姓名：</td>
					<td>${Queryme_teacher.tname}</td>
				</tr>
				<tr>
					<td width="40%" align="right">性别：</td>
					<td>${Queryme_teacher.tsex}</td>
				</tr>
				<tr>
					<td width="40%" align="right">出生年：</td>
					<td>${Queryme_teacher.tage}</td>
				</tr>
				<tr>
					<td width="40%" align="right">职称：</td>
					<td>${Queryme_teacher.tjob}</td>
				</tr>
			</tbody>
		</table>
		<HR style="FILTER: alpha(opacity = 0, finishopacity = 100, style = 1)"
			width="100%" color="grey" SIZE="3">
	</div>
</body>
</html>