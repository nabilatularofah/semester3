<%-- 
    Document   : GuestBook
    Created on : Jan 8, 2021, 11:54:57 PM
    Author     : hp-ProBook
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="gb" scope="page" class="guestbook.GuestBookBean"/> 
<% 
 String message = ""; 
 String name = request.getParameter("name") ; 
 String address = request.getParameter("address") ; 
 String company = request.getParameter("company") ; 
 String email = request.getParameter("email") ; 
 
 if (name != "" && address != "" && company != "" && email != "") {
    boolean r = gb.insertIntoDB(name, address, company, email);
    if (r) {
        message = "Thank you " + name + " for registering";
    } else {
        message = "Error";
    }
}
%> 
<html> 
 <head> 
 <meta http-equiv="Content-Type" content="text/html; 
charset=UTF-8"> 
 <title>GuestBook</title> 
 </head> 
 <body> 
 <h2><%=message%> 
 <br> 
 <a href="index.jsp"> GUEST BOOK </a> 
 <br> 
 <a href="GuestBookView.jsp"> VIEW GUEST BOOK </a> 
 </h2> 
 </body> 
</html>
