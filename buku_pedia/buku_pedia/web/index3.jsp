<%-- 
    Document   : index3
    Created on : Dec 25, 2020, 10:10:57 PM
    Author     : hp-ProBook
--%>
<%@page import="java.util.Locale.Category"%>
<%@ page import="com.jsp.*, java.util.*"%>
<jsp:useBean id="catalogBean" scope="page" class="com.jsp.CatalogBean"/>

<%
Vector<Category> vCategory = catalogBean.getAllCatalog();
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%-- lakukan import class Vector, class CMbBook, class CatalogBean dan classclass pada package java.sql --%> 
<%-- buat objek oBooks dari class CmbBooks (javabean) pada package com.jsp 
gunakan scope=”page”--%> 
<%-- buat objek catalogBean dari class CatalogBean pada package com.jsp 
(javabean) gunakan scope=”page” --%>
<%-- panggil fungsi getAllCatalog simpan dalam variabel vector vCategory --%> 
<html xmlns="http://www.w3.org/1999/xhtml"> 
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" /> 
<title>Untitled Document</title> 
</head> 
<body> 
 <table border="1"> 
 <tr> 
 <td align="center"><b>Daftar Kategori</b></td>
            <td align="center"><b>Deskripsi</b></td> 
 </tr> 
 <% 
 for(int i=0;i<vCategory.size();i++){ 
 //ambil data pada indeks ke I simpan dalam variabel temp dengan tipe Vector 
 //ambil data pada indeks ke 0 pada objek temp simpan dalam variabel String dengan nama id 
 //ambil data pada indeks ke 1 pada objek temp simpan dalam variabel String dengan nama nm 
 
 %> 
 <tr> 
 <td><a href="catalog.jsp?action=view&id=<%-- panggil var id--%>"><%-- 
panggil var nm--%></a></td> 
 </tr> 
 
 <% 
 } 
 %> 
</table> 
</body> 
</html>
