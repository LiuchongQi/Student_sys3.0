<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>学生信息管理系统</title>
</head>
<c:if test="${empty loginName}">
	<c:redirect url="index.jsp"></c:redirect>
</c:if>
<c:if test="${!(perType eq 'student')}">
	<c:redirect url="index.jsp"></c:redirect>
</c:if>
<frameset name="allPage" rows="15%,75%,*" frameborder="no">
	<frame src="Top.jsp" />
	<frameset cols="15%,*">
		<frame src="Student_left.jsp" />
		<frame name="center" src="" />
	</frameset>
	<frame src="Bottom.jsp" />
</frameset>
</html>