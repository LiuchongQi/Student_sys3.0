<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="AllCss.css" type="text/css" rel="stylesheet"/>
<script type="text/javascript">
	function toVaild(){
		var pass1=document.getElementById("new_password").value;
		var pass2=document.getElementById("renew_password").value;
		var pass3=document.getElementById("old_password").value;
		var pass4='${passWord}';
		if(pass1==pass2&&pass1!=''&&pass3==pass4)
		{
	    	alert("修改成功！！！")
			return true;
		}
	    else{
			alert("请重新确认密码！！！");
			return false;
		}
	}
</script>
</head>
<c:if test="${empty loginName}">
	<c:redirect url="index.jsp"></c:redirect>
</c:if>
<body>
	<!-- 修改密码 -->
	<div class="main_box" >
		<form action="ChangePass.do" method="post" onSubmit="return toVaild()" >
		<table border="0px" width="100%" height="50px">
        <thead>
            <tr>
                <th colspan="2" bgcolor="#DCDCDC" align="left">修改密码</th>
            </tr>
        </thead>
        <tbody bgcolor="#F5F5F5">
    	<tr>
        	<td width="40%" align="right">原密码：</td>
            <td><input type="password" maxlength="16" id="old_password"></td>
        </tr>
        <tr>
        	<td width="40%" align="right">新密码：</td>
           <td><input name="new_password" type="password" maxlength="16" id="new_password"></td>
        </tr>
        <tr>
        <td width="40%" align="right">确认密码：</td>
            <td><input type="password" maxlength="16" id="renew_password"></td>
        </tr>
        <tr>
        	<td align="right"><input type="submit" value="提交" style="font-size:10px"/></td>
            <td><input type="reset" value="重置" style="font-size:10px"/></td>
        </tr>
        </tbody>
        </table>
        </form>
	</div>
</body>
</html>