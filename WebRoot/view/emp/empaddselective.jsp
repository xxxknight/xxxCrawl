<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!-- 引入JSTL表达式 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">
	</head>

	<body>
		测试在只添加部分字段情况【其他字段是可为空的，主键自动增长或者设置UUID】
		<hr/>
		<form action="emp/doInsertEmpSelective.do" method="post">
		<table border="1">
			<tr>
				<td>雇员姓名</td>
				<td><input type="text" name="empName"/></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="save"/>
				</td>
			</tr>
		</table>
		</form>
	</body>
</html>
