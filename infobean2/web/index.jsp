<%-- 
    Document   : index
    Created on : Jan 6, 2021, 8:35:20 PM
    Author     : hp-ProBook
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="header.jspf"%>
<%@ page errorPage="error.jsp"%>
<html>
<head>
    <title>infobean2</title>
</head>
<body>
    <%
        String lang = request.getParameter("language");
        if (lang.equalsIgnoreCase("java")) {
    %>
    <h3>Pilihan Anda benar! (<%=lang%>) </h3>
    <%
        } else {
            throw new Exception("Pilihan anda salah!");
        }
    %>
</body>
</html>
