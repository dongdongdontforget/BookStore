<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>图书管理</title>
<%@include file="/include/base.jsp" %>
</head>
<script>
    $(function () {
        $(".delbtn").click(function () {
					var td = $(this).parent().parent().children(":first");
					if (!confirm("确认删除【" + td.text() + "】吗？")) {
						//如果不确认则return false
						return false;
					}
				}
		)



    })
</script>
<body>
	
	<div id="header">
			<img class="logo_img" alt="" src="static/img/logo.jpg" style="height: 60px;width: 60px">
			<span class="wel_word">图书管理系统</span>
			<%@include file="/include/book-manager.jsp" %>
	</div>
	
	<div id="main">
		<table>
			<tr>
				<td>名称</td>
				<td>价格</td>
				<td>作者</td>
				<td>销量</td>
				<td>库存</td>
				<td colspan="2">操作</td>
			</tr>
			<c:forEach items="${requestScope.page.list}" var="book">
				<tr>
					<td>${book.title}</td>
					<td>${book.price}</td>
					<td>${book.author}</td>
					<td>${book.sales}</td>
					<td>${book.stock}</td>
					<td><a href="BookManagerServlet?id=${book.id}&method=getBook&m=update&pn=${page.pageNo}">修改</a></td>
					<td><a class="delbtn" href="BookManagerServlet?method=delete&id=${book.id}&pn=${page.pageNo}">删除</a></td>
				</tr>
			</c:forEach>



			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td><a href="pages/manager/book_edit.jsp?m=add">添加图书</a></td>
			</tr>
		</table>
		<div><%@include file="/include/page.jsp"%></div>
	</div>
	
	<div id="bottom">
		<span>
			洞洞书城.Copyright &copy;2020
		</span>
	</div>
</body>/
</html>