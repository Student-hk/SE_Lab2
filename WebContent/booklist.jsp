<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<link href="./resource/view.css" rel="stylesheet" type="text/css"/>
	<script src="./resource/operate.js"></script>
	<style type="text/css">
	.font{
		font-family:"楷体";
		font-size:16px;
		font-style:italic;
	}
	</style>
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
    <title><s:property value="name" />书籍</title>
</head>
<body>  
	<div class="smart-green">根据作者查询
			<form action="queryAuthor" method="post" role="form" onsubmit="return check()">
				<div>
						<input type="text" id="search" placeholder="Search" name="name"/>
						<input type="submit" value="Go"/>
				</div>
			</form>
	</div>  
    <h2><s:property value="name" />Book List</h2>
       	<table align="center" width="100%">
           	<thead>
                <tr>
                    <th width="20%">Title</th>
                    <th width="17%">Author</th>
                    <th width="20%">Publisher</th>
                    <th width="20%">ISBN</th>
                    <th width="5%">Price</th>
                    <th width="18%">Operation</th>
                </tr>
            </thead>
            <tbody>
                <s:iterator value="books">
                    <tr>
                        <td><s:property value="title" /></td>
                        <td><s:property value="name" /></td>
                        <td><s:property value="publisher" /></td>
                        <td><s:property value="ISBN" /></td>
                        <td>¥<s:property value="price" /></td>
                        <td>
                        	<a href='<s:url action="queryBook"><s:param name="title" value="title" /></s:url>'>
                                详情
                            </a>
                            &nbsp;
                            <a href='<s:url action="updateBook1"><s:param name="title" value="title" /></s:url>'>
                                编辑
                            </a>
                            &nbsp;
                            <a href='<s:url action="deleteBook"><s:param name="title" value="title" /></s:url>'>
                                删除
                            </a>
                        </td>
                    </tr>
                </s:iterator>
            </tbody>
        </table>
        <div class="font">
        	<s:property value="info"/>
        </div>
        <input type="button" value="添加图书" onclick="location.href='addBook.jsp'">
        <a href="index.jsp">返回首页</a>
</body>
</html>