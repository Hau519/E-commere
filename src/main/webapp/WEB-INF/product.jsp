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
    <link rel="Shortcut Icon" href="img/miniapple.png" type="image/x-icon">
</head>
<body>
<jsp:include page="./layouts/header.jsp"></jsp:include>
<br>

<div class="name-input">
    <form action="#" method="post">
        <label for="name-input"><b>Search by name</b></label>
        <input name="name" id="name-input"/>
        <button type="submit" id="search-btn" value="search">Search</button>
    </form>

</div>

<div class="cate-input">
    <form action="#" method="post">
        <label for="category-input"><b>Search by category</b></label>
        <input name="category" id="category-input"/>
        <button type="submit" id="filter-btn" value="filter">Filter</button>
    </form>
</div>

<a href="${pageContext.request.contextPath}/products">All products</a>
<h2>Our Products</h2>
<br>
<div class="products_container">


        <%
            for (Map.Entry<Integer, Products> product : products.entrySet())
            { %>
            <div class="products" >
                <img src="${pageContext.request.contextPath}/img/<%= product.getValue().getName() %>.jpg" alt="product of <%= product.getValue().getName() %>">
                <p class="name"><%= product.getValue().getName() %></p>
                <p class="Category"><%= product.getValue().getCategory() %></p>
                <p class="price"><%= product.getValue().getPrice() %> per <%= product.getValue().getUnit() %> </p>
                <p class="description"><%= product.getValue().getDescription() %></p>
                <form id='quantity_form' class='quantity'>
<%--                    <input type='button' value='-' class='qtyminus minus' field='quantity' />--%>
<%--                    <input type='number' name='quantity' value='0' class='qty'/>--%>
<%--                    <input type='button' value='+' class='qtyplus plus' field='quantity' />--%>

                    <div id="add-product">
                        <p class="add-btn">
                            <a href="${pageContext.request.contextPath}/cart?id=<%=product.getValue().getId()%>">Add to cart</a>
<%--                                <input type="submit" value="Add to Cart">--%>
                        </p>
                    </div>
                    <div id="wish-btn">
                        <p class="wish-btn">
                            <input type="submit" value="Add to WishList">
                        </p>
                    </div>
                </form>
            </div>
        <%}
        %>

</div>
<br>
<jsp:include page="./layouts/footer.jsp"></jsp:include>

</body>
</html>
