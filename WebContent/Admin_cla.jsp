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
	<!-- 课程管理 -->
	<div class="main_box">
		<form action="/Student_sys3.0/queryCourse.do" method="post">
			<span style="font-weight: bold">课程号：</span>
			<input name="Cno" type="text" maxlength="10">
			<span style="font-weight: bold">课程名：</span>
			<input name="Cname" type="text" maxlength="10">
			<span style="font-weight: bold">教师：</span>
			<input name="Tno" type="text" maxlength="10">
			<span style="font-weight: bold">星期：</span>
			<select name="Cday">
				<option value="一">一</option>
				<option value="二">二</option>
				<option value="三">三</option>
				<option value="四">四</option>
				<option value="五">五</option>
				<option value="六">六</option>
				<option value="日">日</option>
			</select>
			<input type="submit" value="查询">
		</form>
		<table border="0px" width="100%" height="50px">
			<thead>
				<tr>
					<th colspan="7" bgcolor="#DCDCDC" align="left">已有课程</th>
				</tr>
				<tr>
					<th bgcolor="#DCDCDC">课序号</th>
					<th bgcolor="#DCDCDC">课程名称</th>
					<th bgcolor="#DCDCDC">教师</th>
					<th bgcolor="#DCDCDC">星期</th>
					<th bgcolor="#DCDCDC">节次</th>
					<th bgcolor="#DCDCDC">操作</th>
				</tr>
			</thead>
			<tbody bgcolor="#F5F5F5">
				<c:forEach items="${QueryCourse}" var="course">
					<tr>
						<td width="15%" align="center">${course.cno }</td>
						<td width="15%" align="center">${course.cname }</td>
						<td width="15%" align="center">${course.tno}</td>
						<td width="15%" align="center">${course.cday }</td>
						<td width="15%" align="center">${course.ctime }</td>
						<td width="25%" align="center"><a
							href='/Student_sys3.0/deleteCourse/${course.cno}.do'
							style="text-decoration: none; color: black">删除</a></td>
					</tr>
				</c:forEach>

			</tbody>
		</table>
		&nbsp;&nbsp;<a href="Admin_ins_cla.jsp" target="center" class="point"><font
			class="word">添加课程</font></a>
	</div>
</body>
</html>