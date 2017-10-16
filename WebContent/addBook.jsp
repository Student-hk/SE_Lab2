<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link href="./resource/view.css" rel="stylesheet" type="text/css"/>
	<script src="./resource/operate.js"></script>
	<title>加入图书<s:property value="title"/></title>
</head>
<body  class="smart-green">
	<div>
		<div>
			<div class="font">
				<h3><s:property value="name"/>图书添加</h3>
			</div><br><br>
			<div>
				<div>
			      <form action="addBook">
			      	<label for="title">书名:</label>
			        <input type="text" name="title"/><br>
			        
			        <label for="authorID">作者ID:</label>
			        <input type="text" name="authorID"/><br>
			        
			        <label for="ISBN">ISBN:</label>
			        <input type="text" name="ISBN"/><br>
			        
			        <label for="publisher">出版社:</label>
			        <input type="text" name="publisher"/><br>
			        
			        <label for="publishDate">出版日期:</label>
			        <input type="text" name="publishDate"/><br>
			        
			        <label for="price">价格:</label>
			        <input type="text" name="price"/><br>
			        
			        <br>
			        <div>
				        <input type="submit" value="确认加入"/>
				        <input type="button" onclick="location.href='javascript:history.go(-1);'" value="返 回"/>
			        </div>
			        
			      </form>
			      	<a href="index.jsp">返回首页</a>
			    </div>
			</div>
		</div>
	</div>
</body>
</html>