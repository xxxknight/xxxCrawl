<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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

<title>My JSP 'testDel.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<script type="text/javascript"
	src='<%=basePath%>public/jquery-1.10.2.min.js'></script>
<script type="text/javascript">
	function savepro() {
		$.ajax({
			type : "DELETE",
			url : "emp/doDeleteEmpById/8",
			//data : JSON.stringify(saveData),
			//contentType : "application/json", //发送至服务器的类型
			dataType : "json", //预期服务器返回类型
			success : function(data) {
				alert( data.name);
			}

		})
	}
</script>
</head>
<body>
	<div>
		<input type="button" value="保存" onclick="savepro()" />
	</div>
	<form  action="emp/doDeleteEmpById/6" method="post">  
    	<input type="hidden" name="_method" value="delete"/>  
    	<input type="submit" value="保存"/>
	</form> 
</body>
</html>
