<%-- 
    Document   : index3
    Created on : Jan 13, 2021, 2:22:18 PM
    Author     : hp-ProBook
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="com.jsp.*, java.util.*"%>
<jsp:useBean id="catalogBean" scope="page" class="com.jsp.CatalogBean"/>

<%
Vector<Category> vCategory = catalogBean.getAllCatalog();
%>

<html>
<head>
    <%@ include file="title.jspf"%>
</head>
<body>
    <%@ include file="header.jspf"%>

    <table border="1">
        <tr>
            <td align="center"><b>Daftar Kategori</b></td>
            <td align="center"><b>Deskripsi</b></td>
        </tr>
    <%
    Iterator<Category> it = vCategory.iterator();
    while (it.hasNext()) {
        Category c = it.next();
    %>
        <tr>
            <td><a href="catalog.jsp?action=view&id=<%=c.getId()%>"><%=c.getName()%></a></td>
            <td><%=c.getDescription()%></td>
        </tr>
    <%
    }
    %>
    </table>

    <%@ include file="footer.jspf"%>
</body>
</html>
