<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link href="./resource/view.css" rel="stylesheet" type="text/css"/>
	<script src="./resource/operate.js"></script>
	<title>添加作者<s:property value="title"/></title>
</head>
<body  class="smart-green">
	<div>
		<div>
			<div>
				<h3>作者信息</h3>
			</div>
			<div>
				<div>
			      <form action="addAuthor" method="post">
			      
			        <label for="authorID">作者ID:</label>
			        <input type="text" name="authorID"/><br>
			        
			        <label for="name">作者:</label>
			        <input type="text" name="name"/><br>
			        
			        <label for="age">年龄:</label>
			        <input type="text" name="age"/><br>
			        
			        <label for="country">国家:</label>
			        <input type="text" name="country"/><br>
					
					<br>
					<div>
						 <input type="submit" value="确认添加"/>
					     <input type="button" onclick="location.href='javascript:history.go(-1);'" value="返 回"/>
			        </div>
					<div>
					<a href="index.jsp">返回首页</a>
					</div>
				  </form>
			    </div>
			</div>
		</div>
	</div>
</body>
</html>