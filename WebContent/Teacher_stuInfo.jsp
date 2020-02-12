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
<c:if test="${!(perType eq 'teacher')}">
	<c:redirect url="index.jsp"></c:redirect>
</c:if>
<body>

	<script>
	function fun_a(Sno,Cno) {
		var Score=prompt("请输入成绩","");
		var hrefString='/Student_sys3.0/insertScore/'+Sno+'_'+Score+'_'+Cno+'.do';
		if(Sno!=''&&Sno!=null&&Cno!=null&&Cno!=''&&Score!=null&&Score!=''){
			document.getElementById('Ahref').setAttribute('href',hrefString);
		}
	}
	</script>
	<!-- 学生管理 -->
	<div class="main_box">
		<form action="#" method="post">
			<table border="0px" width="100%" height="50px">
				<thead>
					<tr>
						<th colspan="8" bgcolor="#DCDCDC" align="left">班级学生</th>
					</tr>
					<tr>
						<th bgcolor="#DCDCDC">学号</th>
						<th bgcolor="#DCDCDC">姓名</th>
						<th bgcolor="#DCDCDC">性别</th>
						<th bgcolor="#DCDCDC">年龄</th>
						<th bgcolor="#DCDCDC">专业</th>
						<th bgcolor="#DCDCDC">年级</th>
						<th bgcolor="#DCDCDC">成绩</th>
						<th bgcolor="#DCDCDC">操作</th>
					</tr>
				</thead>
				<tbody bgcolor="#F5F5F5">
					<c:forEach items="${QueryStudentInfo }" var="student">
						<tr>
							<td width="12%" align="center">${student.username }</td>
							<td width="12%" align="center">${student.sname }</td>
							<td width="12%" align="center">${student.ssex }</td>
							<td width="12%" align="center">${student.sage }</td>
							<td width="12%" align="center">${student.sdept }</td>
							<td width="12%" align="center">${student.grade }</td>
							<td width="14%" align="center">${student.score }</td>
							<td width="14%" align="center"><a href="javascript:void(0)"
								id="Ahref" style="text-decoration: none; color: black"
								onclick="fun_a('${student.username }','${Cno}')">录入成绩</a></td>
						</tr>
					</c:forEach>

				</tbody>
			</table>
		</form>

	</div>
</body>
</html>