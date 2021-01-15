<%-- 
    Document   : sales
    Created on : Jan 6, 2021, 8:20:32 PM
    Author     : hp-ProBook
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="header.jspf"%>

<jsp:useBean id="userData" scope="session" class="com.infobean.UserData"/>
<jsp:setProperty name="userData" property="*"/>

<html>
<head>
    <title>JSP Page</title>
</head>
<body>
    <h2>Selamat Datang, <%=userData.getNamaUser()%></h2>
    ID ANDA = <jsp:getProperty name="userData" property="idUser" /><br/>
    USIA ANDA = <jsp:getProperty name="userData" property="umur" /><br/>
    <a href="index.jsp">LOGIN</a>
</body>
</html>
