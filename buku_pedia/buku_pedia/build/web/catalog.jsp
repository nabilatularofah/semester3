<%-- 
    Document   : catalog
    Created on : Dec 25, 2020, 10:09:22 PM
    Author     : hp-ProBook
--%>

<%@page import="java.util.Vector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<% 
Vector vCatalog ; 
String sTitle ; 
String category_ID = "C01" ; 
 
String sAction = request.getParameter("action") ; 

 
 
%> 
<html> 
 <head> 
     <%@include file="title.jspf" %>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
 <title>JSP Page</title> 
 </head> 
 <body> 
     <%@include file="header.jspf" %>
 <h3> Selamat Datang di <b>BukuPedia </b> 
 <br>Kita menawarkan beragam buku yang menarik dengan harga special.<br> 
 
 <% 
 //lakukan iterasi 
 Iterator it = vCatalog.iterator(); 
 //ambil object dari vCatalog simpan pada objek oBooks (gunakan method next)
 while(it.hasNext()){ 
 %> 
 <br> <br> 
 
 <table> 
 <tr> 
 <td rowspan="7"><img src="<%--menampilkan gb --%>"></td> 
 <td> <%-- menampilkan judul --%></b></td> 
 </tr> 
 <tr> 
 <td>&nbsp;</td> 
 </tr> 
 <tr> 
 <td>Author : <%-- menampilkan pengarang --%> </td> 
 </tr> 
 <tr> 
 <td>Description : <%-- menampilkan judul deskipsi dari buku --%> </td> 
 </tr> 
 <tr> 
 <td>Price : <%-- menampilkan harga --%> </td> 
 </tr> 
 <tr> 
 <td>&nbsp;</td> 
 </tr> 
 <tr> 
<%-- user diminta untuk memasukkan jumlah buku yang akan dibeli kemudian 
terdapat button Add to Cart. Buatlah sebuah form dengan method post dan 
action="shopcart.jsp?action=add&id=<%=oBooks.getProduct_id()%>" --%> 
 <td>Quantity : <%-- buat text field dengan name amount size=3 dan value 
1 dan button submit --%>
     </td> 
 
 </form> 
 </tr> 
</table> 
 <% 
 } 
 %> 
 </h3> 
 
</body> 
</html>
