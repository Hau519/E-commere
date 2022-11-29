<%@ page import="models.entities.Products" %>
<%@ page import="models.action.ProductAction" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>

<%
    HashMap<Integer, Products> products = (HashMap<Integer, Products>) request.getAttribute(ProductAction.PRODUCT_PARAM);
    if (products == null) products = new HashMap<>(); // So that it is not null, but empty
%>
<html>
<head>
    <title>Product page</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
</head>
<body>
<div id="page-container">
    <jsp:include page="./layouts/header.jsp"></jsp:include>
    <h1>This is our products</h1>
    <table>
        <thead>
        <tr>
            <th>Name</th>
            <th>Category</th>
            <th>price</th>
            <th>unit</th>
            <th>description</th>
        </tr>
        </thead>
        <tbody>
        <%
            for (Map.Entry<Integer, Products> product : products.entrySet())
            { %>
        <tr>
            <td><%= product.getValue().getName() %></td>
            <td><%= product.getValue().getCategory() %></td>
            <td><%= product.getValue().getPrice() %></td>
            <td><%= product.getValue().getUnit() %></td>
            <td><%= product.getValue().getDescription() %></td>
        </tr>
        <%}
        %>

        <%
            for (Map.Entry<Integer, Products> product : products.entrySet())
            { %>
            <a class="products" href="#">
                <img src="../img/tomato.jpg">
                <p class="name"><%= product.getValue().getName() %></p>
                <p class="Category"><%= product.getValue().getCategory() %></p>
                <p class="price"><%= product.getValue().getPrice() %> per <%= product.getValue().getUnit() %> </p>
                <p class="description"><%= product.getValue().getDescription() %></p>
            </a>
        <%}
        %>

        </tbody>
    </table>





    <jsp:include page="./layouts/footer.jsp"></jsp:include>
</div>
</body>
</html>
