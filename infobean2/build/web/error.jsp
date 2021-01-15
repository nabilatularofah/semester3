<%-- 
    Document   : error
    Created on : Jan 6, 2021, 8:36:00 PM
    Author     : hp-ProBook
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page isErrorPage="true"%>

<html>
<head>
    <title>JSP Page</title>
</head>
<body>
    <h1>Exception!</h1>
    <h3><%=exception.getMessage()%></h3>
</body>
</html>
