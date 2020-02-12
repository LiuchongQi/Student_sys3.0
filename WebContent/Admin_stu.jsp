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
<c:if test="${!(perType eq 'admin')}">
	<c:redirect url="index.jsp"></c:redirect>
</c:if>
<body>
	<!-- 学生管理 -->
	<form action="/Student_sys3.0/queryStudent.do" method="post">
			<span style="font-weight: bold">学号：</span>
			<input name="Sno" type="text" maxlength="10">
			<span style="font-weight: bold">姓名：</span>
			<input name="Sname" type="text" maxlength="10">
			<span style="font-weight: bold">专业：</span>
			<input name="Sdept" type="text" maxlength="10">
			<span style="font-weight: bold">年级：</span>
			<input name="Grade" type="text" maxlength="10">
			<input type="submit" value="查询">
		</form>
	<div class="main_box">
		<table border="0px" width="100%" height="50px">
			<thead>
				<tr>
					<th colspan="9" bgcolor="#DCDCDC" align="left">现有学生</th>
				</tr>
				<tr>
					<th bgcolor="#DCDCDC">学号</th>
					<th bgcolor="#DCDCDC">密码</th>
					<th bgcolor="#DCDCDC">姓名</th>
					<th bgcolor="#DCDCDC">性别</th>
					<th bgcolor="#DCDCDC">年龄</th>
					<th bgcolor="#DCDCDC">专业</th>
					<th bgcolor="#DCDCDC">班级</th>
					<th bgcolor="#DCDCDC">年级</th>
					<th bgcolor="#DCDCDC">操作</th>
				</tr>
			</thead>
			<tbody bgcolor="#F5F5F5">
				<c:forEach items="${QueryStudent }" var="student">
					<tr>
						<td width="12%" align="center">${student.username }</td>
						<td width="12%" align="center">${student.password }</td>
						<td width="12%" align="center">${student.sname }</td>
						<td width="12%" align="center">${student.ssex }</td>
						<td width="12%" align="center">${student.sage }</td>
						<td width="12%" align="center">${student.sdept }</td>
						<td width="12%" align="center">${student.sclass }</td>
						<td width="12%" align="center">${student.grade }</td>
						<td width="12%" align="center"><a
							href='/Student_sys3.0/deleteStudent/${student.username}.do'
							style="text-decoration: none; color: black">删除</a></td>
					</tr>
				</c:forEach>

			</tbody>
		</table>
		&nbsp;&nbsp;<a href="Admin_ins_stu.jsp" target="center" class="point"><font
			class="word">添加学生</font></a>
	</div>
</body>
</html>