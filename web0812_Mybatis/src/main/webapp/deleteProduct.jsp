<%@page import="shop.ProductDTO"%>
<%@page import="shop.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	ProductDAO pdao = new ProductDAO();
	pdao.deleteProduct(Integer.parseInt(id));
%>
<jsp:forward page="products.jsp"/>