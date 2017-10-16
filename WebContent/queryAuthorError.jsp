<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link href="./resource/view.css" rel="stylesheet" type="text/css"/>
	<script src="./resource/operate.js"></script>
	<title>作者不存在</title>
</head>
<body class="smart-green">
	<h3>该查询作者并不在管理库中，你可以添加该作者到管理库，或者返回上一层</h3>
	<div>
		<input type="button" value="新添书籍作者" onclick="location.href='addAuthor.jsp'">
		<input type="button" onclick="location.href='javascript:history.go(-1);'" value="返 回" />
	</div>
</body>
</html>