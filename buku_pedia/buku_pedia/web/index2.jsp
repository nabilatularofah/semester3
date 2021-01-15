<%-- 
    Document   : index2
    Created on : Dec 25, 2020, 10:06:35 PM
    Author     : hp-ProBook
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%-- --%> 
<%-- lakukan import class Vector, class CMbBook, class CatalogBean dan classclass pada package java.sql --%> 
<%@ page import="java.util.Vector, com.jsp.cmbBooks, com.jsp.CatalogBean, java.sql.*, java.util.Iterator"%>
<%-- buat objek oBooks dari class CmbBooks (javabean) pada package com.jsp 
gunakan scope=”page”--%> 
<jsp:useBean id="oBooks" class="com.jsp.cmbBooks" scope="page"/>
<%-- buat objek catalogBean dari class CatalogBean pada package com.jsp 
(javabean) gunakan scope=”page” --%>
<jsp:useBean id="catalogBean" class="com.jsp.CatalogBean" scope="page"/>
<%-- panggil fungsi getPromotionBooks() untuk mendapatkan data buku-buku yang 
sedang dipromosikan simpan dalam Vector vCatalog --%> 
<%
    Vector vCatalog = catalogBean.getPromotionBooks();
%>
<html xmlns="http://www.w3.org/1999/xhtml"> 
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" /> 
<title>Untitled Document</title> 
</head> 
 
<body> 
 <h3> Selamat Datang di <b>BukuPedia </b> 
 <br>Kita menawarkan beragam buku yang menarik dengan harga special.<br> 
 
 <% 
 //lakukan iterasi 
 Iterator it = vCatalog.iterator(); 
 while(it.hasNext()){ 
 //ambil object dari vCatalog simpan pada objek oBooks (gunakan method next) 
    oBooks = (cmbBooks)it.next();
 %> 
 <br> <br> 
 
 <table> 
 <tr> 
 <td rowspan="7"><img src=https://ebooks.gramedia.com/ebook-covers/46963/image_highres/ID_PPP2019MTH04PPP.jpg"<%--menampilkan gb --%><%=oBooks.getImage()%>"></td> 
 <td> Python untuk Programmer Pemula<%-- menampilkan judul --%><%=oBooks.getTitle()%></b></td> 
 </tr> 
 <tr> 
 <td>&nbsp;</td> 
 </tr> 
 <tr> 
 <td>Author : Jubilee Enterprise<%-- menampilkan pengarang --%> <%=oBooks.getAuthor()%></td> 
 </tr> 
 <tr> 
 <td>Description : Setiap orang yang mau belajar pemrograman akan jatuh cinta dengan Python. Mengapa? Karena mudah dipelajari sekaligus sangat prospektif untuk karier di masa depan. Python termasuk bahasa pemrograman yang ramah bagi para pemula dan orang awam, baik bagi pengguna MS Windows maupun Linux. Buku ini dapat menjadi teman yang baik bagi para pemula untuk mengenal pemrograman. Bahasa di dalam buku ini adalah seputar dasar-dasar Python dan pemrograman database menggunakan Python serta MySQL. Topik yang akan dipelajari adalah bagaimana menginstal tool, Python, struktur program, fungsi, percabangan dan perulangan, penggunaan modul, serta bahasa pemrograman Python dan MySQL untuk mengelola database. Semua dibahas dan disusun dalam bahasa yang mudah dipahami oleh para pemula.<%-- menampilkan judul deskipsi dari buku --%> <%=oBooks.getDescription()%></td> 
 </tr> 
 <tr> 
 <td>Price : 71.500<%-- menampilkan harga --%> <%=oBooks.getPrice()%></td>
  </tr> 
 <tr> 
 <td>&nbsp;</td> 
 </tr> 
 <tr> 
<%-- user diminta untuk memasukkan jumlah buku yang akan dibeli kemudian 
terdapat button Add to Cart. Buatlah sebuah form dengan method post dan 
action="shopcart.jsp?action=add&id=<%=oBooks.getProduct_id()%>" --%> 
<form method="post" action="shopcart.jsp?action=add&id=<%=oBooks.getProduct_id()%>"
 <td>Quantity : <%-- buat text field dengan name amount size=3 dan value 
1 dan button submit --%> 
     <input type="text" name="amount" size="3" value="1">
     <input type="submit" value="Submit">
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
