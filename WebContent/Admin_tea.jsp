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
	<!-- 教师管理 -->
	<div class="main_box">
		<form action="/Student_sys3.0/queryTeacher.do">
			<span style="font-weight: bold">教师号：</span> <input name="Tno"
				type="text" maxlength="10"> <span style="font-weight: bold">姓名：</span>
			<input name="Tname" type="text" maxlength="10"> <span
				style="font-weight: bold">职称：</span> <select name="Tjob">
				<option value="教授">教授</option>
				<option value="副教授">副教授</option>
				<option value="讲师">讲师</option>
			</select> <input type="submit" value="查询">
		</form>
		<table border="0px" width="100%" height="50px">
			<thead>
				<tr>
					<th colspan="7" bgcolor="#DCDCDC" align="left">现有教师</th>
				</tr>
				<tr>
					<th bgcolor="#DCDCDC">教师号</th>
					<th bgcolor="#DCDCDC">密码</th>
					<th bgcolor="#DCDCDC">姓名</th>
					<th bgcolor="#DCDCDC">性别</th>
					<th bgcolor="#DCDCDC">出生年</th>
					<th bgcolor="#DCDCDC">职称</th>
					<th bgcolor="#DCDCDC">操作</th>
				</tr>
			</thead>
			<tbody bgcolor="#F5F5F5">
				<c:forEach items="${QueryTeacher }" var="teacher">
					<tr>
						<td width="15%" align="center">${teacher.username }</td>
						<td width="15%" align="center">${teacher.password }</td>
						<td width="15%" align="center">${teacher.tname }</td>
						<td width="15%" align="center">${teacher.tsex }</td>
						<td width="15%" align="center">${teacher.tage }</td>
						<td width="15%" align="center">${teacher.tjob }</td>
						<td width="10%" align="center"><a
							href='/Student_sys3.0/deleteTeacher/${teacher.username}.do'
							style="text-decoration: none; color: black">删除</a></td>
					</tr>
				</c:forEach>

			</tbody>
		</table>
		&nbsp;&nbsp;<a href="Admin_ins_tea.jsp" target="center" class="point"><font
			class="word">添加教师</font></a>
	</div>

</body>
</html>