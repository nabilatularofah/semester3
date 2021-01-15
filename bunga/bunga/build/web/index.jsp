<%-- 
    Document   : index
    Created on : Jan 6, 2021, 5:56:11 PM
    Author     : hp-ProBook
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html> 
 <head> 

 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
 <title>JSP Page</title> 
 </head> 
 <body> 
 <table border="1"> 
 <tr> <td> 
 <form method="GET" action="index.jsp"> 
 <select name="image" size="5"> 
 <option value="putih.jpeg" selected>Bunga Putih</option> 
 <option value="merah.jpeg">Bunga Merah</option> 
 <option value="pink.jpg">Bunga Pink</option> 
 <option value="biru.jpg">Bunga Biru</option> 
 <option value="ungu.jpeg">Bunga Ungu</option> 
 </select> 
 <br> 
 <input type="submit" value="submit" /> 
 </form> 
 </td> 
 
 <% 
 
 String imgref = "images/" ; 
 String param = request.getParameter("image") ; 
 if (param==null) 
 imgref += "putih.jpeg"; 
 else 
 imgref += param; 
 
 %> 
 
<td> 
 <img src="<%=imgref%>"> 
 <p align="center"><%=imgref%></p> 
</td> 
</tr> </table> 
 </body> 
</html>
