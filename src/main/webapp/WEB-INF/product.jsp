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
<jsp:include page="./layouts/header.jsp"></jsp:include>
s
<div id="page-container">
    <h1>This is our products</h1>

        <%
            for (Map.Entry<Integer, Products> product : products.entrySet())
            { %>
            <a class="products" href="#">
                <img src="${pageContext.request.contextPath}/img/<%= product.getValue().getName() %>.jpg">
                <p class="name"><%= product.getValue().getName() %></p>
                <p class="Category"><%= product.getValue().getCategory() %></p>
                <p class="price"><%= product.getValue().getPrice() %> per <%= product.getValue().getUnit() %> </p>
                <p class="description"><%= product.getValue().getDescription() %></p>
            </a>
        <%}
        %>
    <form action="${pageContext.request.contextPath}/Products" method="get">
        <label for="name-input">Search by name</label>
        <input name="name-input" id="name-input"/>
        <button type="submit" value="search">Search</button>
    </form>
</div>
<jsp:include page="./layouts/footer.jsp"></jsp:include>

</body>
</html>
