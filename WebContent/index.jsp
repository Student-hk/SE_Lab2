<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<link href="./resource/view.css" rel="stylesheet" type="text/css"/>
	<script src="./resource/operate.js"></script>
	<script>
		function check(){
			var name = document.getElementById("search").value;
			if(name!=""){
				return true;
			}
			else{
				alert("请保证作者输入不为空");
				search.focus();
				return false;
			}
		}
	</script>
    <title>图书管理平台</title>
</head>
<body class="smart-green">
    <div>
      <h2>个人图书管理平台</h2>
    </div>
    
    <div>
      <div>
		<div>根据作者查询</div>
		<div>
			<form action="queryAuthor" method="post" role="form" onsubmit="return check()">
				<div>
						<input type="text" id="search" placeholder="Search" name="name"/>
						<input type="submit" value="Go"/>
				</div>
			</form>
		</div>
		<br><br>
	 </div>
		<div>
			<form action="allBook" method="post" role="form">
				<input type="submit" value="编辑管理所有图书"/>
				<input type="button" value="添加图书" onclick="location.href='addBook.jsp'">
			</form>
		</div>
    </div>
  </body>
</html>