<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div>
	<span>欢迎<span class="um_span">${user.username}</span>光临洞洞书城

	</span>
	<a href="pages/cart/cart.jsp">购物车</a>

	<a href="pages/order/order.jsp">我的订单</a>
	<a href="UserServlet?method=logout">注销</a>&nbsp;&nbsp;
	<a href="index.jsp">返回</a>
</div>