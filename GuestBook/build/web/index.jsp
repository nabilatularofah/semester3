<%-- 
    Document   : index
    Created on : Jan 8, 2021, 11:53:59 PM
    Author     : hp-ProBook
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html> 
 <head> 
 <meta http-equiv="Content-Type" content="text/html; 
charset=UTF-8"> 
 <title>GuestBook</title> 
 </head> 
 <body> 
 <h1>Guest Book</h1> 
  <form action="GuestBook.jsp" method="POST">
        <table>
        <tr>
            <td>Name:</td>
            <td><input type="text" name="name"></td>
        </tr>
        <tr>
            <td>Address:</td>
            <td><input type="text" name="address"></td>
        </tr>
        <tr>
            <td>Company:</td>
            <td><input type="text" name="company"></td>
        </tr>
        <tr>
            <td>Email:</td>
            <td><input type="text" name="email"></td>
        </tr>
        </table>

        <input type="submit" value="Submit">
    </form>
 
 <h2><a href="GuestBookView.jsp" > View Guest Book </a></h2> 
 </body> 
</html>
