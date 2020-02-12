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
	<!-- 添加课程 -->
	<div class="main_box">
		<form action="insertCourse.do" method="post">
			<table border="0px" width="100%" height="50px">
				<thead>
					<tr>
						<th colspan="2" bgcolor="#DCDCDC" align="left">添加课程</th>
					</tr>
				</thead>
				<tbody bgcolor="#F5F5F5">
					<tr>
						<td width="40%" align="right">课序号：</td>
						<td><input name="Cno" type="text" maxlength="16"></td>
					</tr>
					<tr>
						<td width="40%" align="right">课程名称：</td>
						<td><input name="Cname" type="text" maxlength="16"></td>
					</tr>
					<tr>
						<td width="40%" align="right">教师号：</td>
						<td><input name="Cteacher" type="text" maxlength="16"></td>
					</tr>
					<tr>
						<td width="40%" align="right">星期：</td>
						<td><select name="Cday">
								<option value="一">一</option>
								<option value="二">二</option>
								<option value="三">三</option>
								<option value="四">四</option>
								<option value="五">五</option>
								<option value="六">六</option>
								<option value="日">日</option>
						</select></td>
					</tr>
					<tr>
						<td width="40%" align="right">节次：</td>
						<td><select name="Ctime">
								<option value="1-2">1-2</option>
								<option value="3-4">3-4</option>
								<option value="5-6">5-6</option>
								<option value="7-8">7-8</option>
								<option value="9-10">9-10</option>
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