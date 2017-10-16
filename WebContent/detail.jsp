<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link href="./resource/view.css" rel="stylesheet" type="text/css"/>
	<script src="./resource/operate.js"></script>
	<title><s:property value="title"/>的详细信息</title>
</head>
<body class="smart-green">
	<div>
		<div>
			<div>
				<h3>《<s:property value="title"/>》的详细信息</h3>
			</div>
			<div>
				<table style="border:1px solid #93CE37" align="center">
					<tr>
						<td style="background-color:#9DD929">书名</td>
						<td><s:property value="title"/></td>
					</tr>
					<tr>
						<td style="background-color:#9DD929">ISBN</td>
						<td><s:property value="ISBN"/></td>
					</tr>
					
					<tr>
						<td style="background-color:#9DD929">出版社</td>
						<td><s:property value="publisher"/></td>
					</tr>
					<tr>
						<td style="background-color:#9DD929">出版日期</td>
						<td><s:property value="publishDate"/></td>
					</tr>
					<tr>
						<td style="background-color:#9DD929">售价</td>
						<td>¥<s:property value="price"/></td>
					</tr>
					<tr>
						<td style="background-color:#9DD929">作者</td>
						<td><s:property value="name"/></td>
					</tr>
					<tr>
						<td style="background-color:#9DD929">作者ID</td>
						<td><s:property value="authorID"/></td>
					</tr>
					<tr>
						<td style="background-color:#9DD929">年龄</td>
						<td><s:property value="age"/></td>
					</tr>
					<tr>
						<td style="background-color:#9DD929">国家</td>
						<td><s:property value="country"/></td>
					</tr>
				</table>
			</div>
		</div>
		<div>
			<div>
				<a href='<s:url action="updateBook1"><s:param name="title" value="title" /></s:url>'>
					<input type="button" value="编辑">
				</a>
				&nbsp;&nbsp;
				<a href='<s:url action="deleteBook"><s:param name="title" value="title" /></s:url>'>
					<input type="button" value="删除">
				</a>
				&nbsp;&nbsp;
				<input type="button" onclick="location.href='javascript:history.go(-1);'" value="返 回" />
			</div>
			<a href="index.jsp">返回首页</a>
		</div>
	</div>
</body>
</html>