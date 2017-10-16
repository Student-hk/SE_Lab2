<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link href="./resource/view.css" rel="stylesheet" type="text/css"/>
	<script>
	function titleCheck(){
		var oldTitle = document.getElementById("oldtitle").value;
		var title="<s:property value="title"/>";
		if(oldTitle==title){
			return true;
		}
		else{
			alert("请保证要编辑的原书名为《"+title+"》");
			oldtitle.focus();
			return false;
		}
	}
	</script>
	<title><s:property value="title"/></title>
</head>
<body class="smart-green">
	<div>
		<div>
			<div>
				<h3>编辑图书 《<s:property value="title"/>》</h3>
			</div>
			<div>
				<div>
			      <form action="updateBook2" method="post" onsubmit="return titleCheck()">
			      	<label for="title">原书名:</label>
			        <input type="text" name="title" id="oldtitle"/><br>
			        
			      	<label for="newTitle">书名:</label>
			        <input type="text" name="newTitle"/><br>
			        
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
				        <input type="submit" value="确认更改"/>
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