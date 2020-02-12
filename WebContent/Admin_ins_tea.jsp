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
	<!-- 添加教师 -->
	<div class="main_box">
		<form action="insertTeacher.do" method="post">
			<table border="0px" width="100%" height="50px">
				<thead>
					<tr>
						<th colspan="2" bgcolor="#DCDCDC" align="left">添加教师</th>
					</tr>
				</thead>
				<tbody bgcolor="#F5F5F5">
					<tr>
						<td width="40%" align="right">教师号：</td>
						<td><input name="Tno" type="text" maxlength="16"></td>
					</tr>
					<tr>
						<td width="40%" align="right">密码：</td>
						<td><input name="password" type="text" maxlength="16"></td>
					</tr>
					<tr>
						<td width="40%" align="right">姓名：</td>
						<td><input name="Tname" type="text" maxlength="16"></td>
					</tr>
					<tr>
						<td width="40%" align="right">性别：</td>
						<td><select name="Tsex">
								<option value="男">男</option>
								<option value="女">女</option>
						</select></td>
					</tr>
					<tr>
						<td width="40%" align="right">出生年：</td>
						<td><input name="Tage" type="text" maxlength="16"></td>
					</tr>
					<tr>
						<td width="40%" align="right">职称：</td>
						<td><select name="Tjob">
								<option value="教授">教授</option>
								<option value="副教授">副教授</option>
								<option value="讲师">讲师</option>
						</select></td>
					</tr>
					<tr>
						<td width="40%" align="right"><input type="submit" value="提交"
							style="font-size: 10px" /></td>
						<td><input type="reset" value="重置" style="font-size: 10px" /></td>
					</tr>
				</tbody>
			</table>
		</form>
	</div>

</body>
</html>