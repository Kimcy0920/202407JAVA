<%@page import="shop.ProductDAO"%>
<%@page import="shop.ProductDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
String name = request.getParameter("name");
String description = request.getParameter("description");
String price = request.getParameter("price");
String stock = request.getParameter("stock");
ProductDTO pdto = new ProductDTO(0, name, description, Double.parseDouble(price), Integer.parseInt(stock));
ProductDAO pdao = new ProductDAO();
pdao.insertProduct(pdto);
%>
<jsp:forward page="products.jsp"/>
