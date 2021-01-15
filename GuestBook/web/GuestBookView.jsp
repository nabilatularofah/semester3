<%-- 
    Document   : GuestBookView
    Created on : Jan 8, 2021, 11:56:01 PM
    Author     : hp-ProBook
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.util.*, guestbook.guest"%>
<jsp:useBean id="gb" scope="page" class="guestbook.GuestBookBean"/>

<%
Vector<guest> vGuest = gb.viewGuestBook();
%>

<html> 
 <head> 
 <meta http-equiv="Content-Type" content="text/html; 
charset=UTF-8"> 
 <title>GuestBook</title> 
 </head> 
 <body> 
 <h1>Guest List </h1> 
 <%
    Iterator value = vGuest.iterator();
    while (value.hasNext()) {    
        guest g = (guest)value.next();
    %>
        <table>
        <tr>
            <td>Name:</td>
            <td><%=g.getName()%></td>
        </tr>
        <tr>
            <td>Address:</td>
            <td><%=g.getAddress()%></td>
        </tr>
        <tr>
            <td>Company:</td>
            <td><%=g.getCompany()%></td>
        </tr>
        <tr>
            <td>Email:</td>
            <td><%=g.getEmail()%></td>
        </tr>
        </table>
        <br/>
    <%
    }
    %>
 
 </body> 
</html>
