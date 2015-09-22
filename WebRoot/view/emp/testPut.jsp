<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'testPut.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body>
	<form action="emp/doInsertEmp" method="post">
		<input type="hidden" name="_method" value="put" />
		<table border="1">
			<tr>
				<td>雇员姓名</td>
				<td><input type="text" name="empName" />
				</td>
			</tr>
			<tr>
				<td>雇员年龄</td>
				<td><input type="text" name="empAge" />
				</td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="save" /></td>
			</tr>
		</table>
	</form>
</body>
</html>
