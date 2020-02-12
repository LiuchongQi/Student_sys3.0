<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript">
	function toCheck1() {
		var pass1 = document.getElementById("insertpass1").value;
		var pass2 = document.getElementById("reinsertpass1").value;
		var pass3 = document.getElementById("user1").value;
		if (pass1 == pass2 && pass1 != '' && pass3 != '') {
			return true;
		} else {
			alert("请重新确认密码！！！");
			return false;
		}
	}
</script>
</head>
<c:if test="${empty loginName}">
	<c:redirect url="index.jsp"></c:redirect>
</c:if>
<c:if test="${!(perType eq 'admin')}">
	<c:redirect url="index.jsp"></c:redirect>
</c:if>

<body>
	<!-- 添加管理员账号 -->
	<div class="main_box">
		<form action="insertAdmin.do" method="post"
			onSubmit="return toCheck1()">
			<table border="0px" width="100%" height="50px">
				<thead>
					<tr>
						<th colspan="2" bgcolor="#DCDCDC" align="left">添加管理员账号</th>
					</tr>
				</thead>
				<tbody bgcolor="#F5F5F5">
					<tr>
						<td width="40%" align="right">用户名：</td>
						<td><input name="admin_username" type="text" maxlength="16"
							id="user1"></td>
					</tr>
					<tr>
						<td width="40%" align="right">密码：</td>
						<td><input name="admin_password" type="password"
							maxlength="16" id="insertpass1"></td>
					</tr>
					<tr>
						<td width="40%" align="right">确认密码：</td>
						<td><input type="password" maxlength="16" id="reinsertpass1"></td>
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