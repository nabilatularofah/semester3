<%-- 
    Document   : index2
    Created on : Jan 13, 2021, 2:21:41 PM
    Author     : hp-ProBook
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="com.jsp.*, java.util.*"%>
<jsp:useBean id="catalogBean" scope="page" class="com.jsp.CatalogBean"/>

<%
Vector<Product> vCatalog = catalogBean.getPromotionProducts();
%>

<html>
<head>
    <%@ include file="title.jspf"%>
</head>
<body>
    <%@ include file="header.jspf"%>

    <%
    Iterator<Product> it = vCatalog.iterator();
    while (it.hasNext()) {
        Product p = it.next();
    %>
        <div style="display: flex;">
            <img src="<%=p.getImage()%>" style="max-width: 200px; margin-right: 20px;">
            <div style="display: flex; flex-direction: column; justify-content: center;">
                <b><%=p.getTitle()%></b>

                <br/>
                <table>
                <tr>
                    <td>Author:</td>
                    <td><%=p.getAuthor()%></td>
                </tr>
                <tr>
                    <td>Category:</td>
                    <td><%=p.getCategory().getName()%></td>
                </tr>
                <tr>
                    <td style="vertical-align: top;">Description:</td>
                    <td><%=p.getDescription()%></td>
                </tr>
                <tr>
                    <td>Price:</td>
                    <td><%=p.getPrice()%> IDR</td>
                </tr>
                </table>
                <br/>

                <form method="POST" action="shopcart.jsp" style="margin: 0;">
                    <input type="hidden" name="action" value="add">
                    <input type="hidden" name="id" value="<%=p.getId()%>">
                    Quantity: <input type="number" style="width: 3rem;" name="qty" value="1"> <input type="submit" value="Add to cart">
                </form>
            </div>
        </div>

        <br/>
    <%
    }
    %>

    <%@ include file="footer.jspf"%>
</body>
</html>
