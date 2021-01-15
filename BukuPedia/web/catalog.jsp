<%-- 
    Document   : catalog
    Created on : Jan 13, 2021, 2:18:57 PM
    Author     : hp-ProBook
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="com.jsp.*, java.util.*"%>
<jsp:useBean id="catalogBean" scope="page" class="com.jsp.CatalogBean"/>

<%
String action = request.getParameter("action");
if (action == null || action.equals("")) {
    action = "view";
}
Vector<Product> vCatalog = new Vector<Product>();
if (action.equals("search")) {
    String keyword = request.getParameter("keyword");
    vCatalog = catalogBean.getProductsCatalogSearch(keyword);
} else if (action.equals("view")) {
    String id = request.getParameter("id");
    vCatalog = catalogBean.getProductsCatalog(id);
}
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
