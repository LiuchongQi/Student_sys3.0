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
	<!-- 课程管理 -->
	<div class="main_box">
		<table border="0px" width="100%" height="50px">
			<thead>
				<tr>
					<th colspan="5" bgcolor="#DCDCDC" align="left">我的课表</th>
				</tr>
				<tr>
					<th bgcolor="#DCDCDC">课序号</th>
					<th bgcolor="#DCDCDC">课程名称</th>
					<th bgcolor="#DCDCDC">星期</th>
					<th bgcolor="#DCDCDC">节次</th>
					<th bgcolor="#DCDCDC">操作</th>
				</tr>
			</thead>
			<tbody bgcolor="#F5F5F5">
				<c:forEach items="${Queryme_course}" var="course">
					<tr>
						<td width="20%" align="center">${course.cno }</td>
						<td width="20%" align="center">${course.cname }</td>
						<td width="20%" align="center">${course.cday }</td>
						<td width="20%" align="center">${course.ctime }</td>
						<td width="20%" align="center"><a
							href='/Student_sys3.0/ShowCourseStudent/${course.cno}.do'
							style="text-decoration: none; color: black">查看学生信息</a></td>
					</tr>
				</c:forEach>

			</tbody>
		</table>
	</div>
</body>
</html>