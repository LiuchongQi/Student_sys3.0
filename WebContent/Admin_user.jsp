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
	<!-- 账号管理 -->
	<div class="main_box">
		<form action="#" method="post">
			<table border="0px" width="100%" height="50px">
				<thead>
					<tr>
						<th colspan="3" bgcolor="#DCDCDC" align="left">管理员</th>
					</tr>
					<tr>
						<th bgcolor="#DCDCDC">账号</th>
						<th bgcolor="#DCDCDC">密码</th>
						<th bgcolor="#DCDCDC">操作</th>
					</tr>
				</thead>
				<tbody bgcolor="#F5F5F5">
					<c:forEach items="${QueryAdmin}" var="admin">
						<tr>
							<td width="30%" align="center">${admin.username }</td>
							<td width="30%" align="center">${admin.password }</td>
							<td width="40%" align="center"><a
								href='/Student_sys3.0/deleteAdmin/${admin.username}.do'
								style="text-decoration: none; color: black">删除</a></td>
						</tr>
					</c:forEach>

				</tbody>
			</table>
			&nbsp;&nbsp;<a href="Admin_ins_us.jsp" target="center" class="point"><font
				class="word">添加管理员</font></a>
		</form>
	</div>
</body>
</html>