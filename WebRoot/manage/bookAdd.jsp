<%@ page language="java" contentType="text/html; charset=GB2312" pageEncoding="GB2312"%>
<%@ page language="java" import="java.util.*" %>
<%@ page language="java" import="com.qinziwang.action.*" %>
<%@ page language="java" import="com.qinziwang.dao.*" %>
<%@ page language="java" import="com.qinziwang.domain.*" %>

<% 
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	//ҳ�����
	String type = "book";	
	//���ӵ������ַ
	String saveAction = basePath + "book/book_add.action";

%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="GB2312">
    <title>������������</title>
	<link rel="stylesheet" type="text/css" href="../css/manage/main.css">
	<script type="text/javascript" src="../javascript/jquery.js"></script>
</head>
<body>
<%@ include  file="./top.jsp"%>
<%@ include  file="./left.jsp"%>

<div class="manage_right">
	<div class="content">
		<div class="formTitle">
			<span>�½�ͼ��</span>
		</div>
		<div class="formPage">
		<form action="<%=saveAction %>" method="post" enctype="multipart/form-data" name="bookForm" id="bookForm">
		
				<table>
					<tr>
						<td>���ƣ�</td>
						<td><input type="text" name="book.name"/></td>
					</tr>
					<tr>
						<td>���ߣ�</td>
						<td><input type="text" name="book.author"/></td>
					</tr>
					<tr>
						<td>�����磺</td>
						<td><input type="text" name="book.publisher"/></td>
					</tr>
					<tr>
						<td>����ʱ�䣺</td>
						<td><input type="text" name="book.creationtime"/></td>
					</tr>
					<tr>
						<td>�۸�</td>
						<td><input type="text" name="book.price"/></td>
					</tr>
					<tr>
						<td>ͼƬ��</td>
						<td><input type="file" id="photoFile" name="photoFile"/>
						</td>
					</tr>
					<tr>
						<td></td>
						<td><button class="submit" type="submit">ȷ��</button></td>
					</tr>
				</table>
				</form>
		
		</div>
	</div>
</div>
	
</body>
</html>