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
	<!-- 选课 -->
	<div class="main_box">
		<table border="0px" width="100%" height="50px">
			<thead>
				<tr>
					<th colspan="6" bgcolor="#DCDCDC" align="left">现有课程</th>
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
				<c:forEach items="${pageBean.pageData }" var="course">
					<tr>
						<td width="15%" align="center">${course.cno }</td>
						<td width="15%" align="center">${course.cname }</td>
						<td width="15%" align="center">${course.tno }</td>
						<td width="15%" align="center">${course.cday }</td>
						<td width="15%" align="center">${course.ctime }</td>
						<td width="15%" align="center"><a
							href='/Student_sys3.0/chooseCourse/${course.cno}_${pageBean.currentPage }.do'
							style="text-decoration: none; color: black">选课</a></td>
					</tr>
				</c:forEach>
			</tbody>
			<tr>
				<td colspan="3" align="center">
					当前${pageBean.currentPage }/${pageBean.totalPage }页
					&nbsp;&nbsp; 
					<a href="/Student_sys3.0/queryAllCourse/1.do" style="text-decoration: none; color: black">首页</a> 
					<a href="/Student_sys3.0/queryAllCourse/${pageBean.currentPage-1}.do" style="text-decoration: none; color: black">上一页</a> 
					<a href="/Student_sys3.0/queryAllCourse/${pageBean.currentPage+1}.do" style="text-decoration: none; color: black">下一页</a> 
					<a href="/Student_sys3.0/queryAllCourse/${pageBean.totalPage}.do" style="text-decoration: none; color: black">末页</a>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>