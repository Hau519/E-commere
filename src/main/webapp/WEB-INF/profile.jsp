<%@ page import="models.entities.Customer" %>
<%@ page import="models.entities.Order" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="models.entities.Products" %>
<%@ page import="models.entities.ShoppingCart" %>
<%@ page import="java.text.DecimalFormat" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Customer user = (Customer) session.getAttribute("userLogin");
    ArrayList<Products> wishList = (ArrayList<Products>) session.getAttribute("wishList");
    if (wishList == null) wishList = new ArrayList<Products>();
    ArrayList<Order> orderList = (ArrayList<Order>) session.getAttribute(Integer.toString(user.getId()));
    if (orderList == null) orderList = new ArrayList<Order>();
    DecimalFormat formatter = new DecimalFormat("#0.00");
%>

<html>
<head>
    <title>Login</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
    <link rel="Shortcut Icon" href="${pageContext.request.contextPath}/img/miniapple.png" type="image/x-icon">
</head>
<body>
<jsp:include page="./layouts/header.jsp"/>
<div id="page-container">
    <div class="profileInformation">
        <label>Name:</label>
        <p><%= user.getFirstName() + " " + user.getLastName()%></p>
        <label>Email:</label>
        <p><%= user.getEmail()%></p>
        <label>Phone number:</label>
        <p><%= user.getPhone()%></p>

    <div class="=wishList">
        <section id="cart" class="section-p1">
            <table id="table1">
                <thead>
                <tr>
                    <td>Remove</td>
                    <td>Image</td>
                    <td>Product</td>
                    <td>Price</td>
                    <td>Add to cart</td>
                </tr>
                </thead>

                <tbody>

                <div class="empty-title">
                    <p id="empty1">Your Farm Fresh WishList</p>
                    <br>
                    <% if (wishList.isEmpty()){%>
                    <img id="empty-bag" src="./img/empty-bag.png">
                    <br><br>
                    <p id="empty2"><b>You don't have anything in your wishlist!</b></p>
                    <p id="empty3">Start adding items to your list</p>
                    <p id="empty4"><b>Shop from</b></p>
                    <div class="empty-btn">
                        <p class="empty5"><a style="text-decoration: none" style="color: red;" href="${pageContext.request.contextPath}/products"><b>Our Products</b></a>
                        </p>
                    </div>
                    <br>

                    <%} else{%>
                    <% for(Products item: wishList){%>
                    <br><br>
                </div>
                <div class="dd1">
                    <tr class="cart-items">
                        <td class="remove-btn" id="remove-product"><a style="text-decoration: none" href="Remove?action=1?&index=<%=wishList.indexOf(item)%>" style="color: inherit;"><b>Remove</b></a></td>
                        <td><img src="img/<%= item.getName()%>.jpg" alt=""></td>
                        <td><%= item.getName()%></td>
                        <td class="price">$<%=item.getPrice()%>/<%=item.getUnit()%></td>
                        <td class="remove-btn"><a href="${pageContext.request.contextPath}/cart?id=<%=item.getId()%>" id="add-btn" style="color: inherit; "><b>Add to cart</b></a></td>
                    </tr>
                </div>

                <%}
                }%>
                </tbody>
            </table>

        </section>

    </div>
    <div class = "previousOrder">
        <div class="products_container">

            <div class="empty-title">
                <p id="empty1">Your previous order</p>
                <br>
                <% if (orderList.isEmpty()){%>
                <img id="empty-bag" src="./img/empty-bag.png">
                <br><br>
                <p id="empty2"><b>You don't have any order!</b></p>
                <p id="empty4"><b>Shop from</b></p>
                <div class="empty-btn">
                    <p class="empty5"><a style="text-decoration: none" style="color: red;" href="${pageContext.request.contextPath}/products"><b>Our Products</b></a>
                    </p>
                </div>
                <br>

                <%} else{%>
                <% for(Order order: orderList){%>
                <p class="name">Order number: <%= order.getOrderNumber() %></p>
                <p class="price">Total: $<%= order.getTotal() %></p>
                <p class="description">Date: <%= order.getOrderDate() %></p>
                <p>Product list: </p>
                <table width="100%" style="border: #333333 solid">
                    <thead style="border: #333333 solid">
                    <tr style="border: #333333 solid">
                        <td>Image</td>
                        <td>Product</td>
                        <td>Price</td>
                        <td>Quantity</td>
                        <td>Total</td>
                    </tr>
                    </thead>
                    <% for(ShoppingCart itemBought: order.getProductList()){%>
                    <tbody style="border: #333333 solid">
                    <tr class="cart-items" style="border: #333333 solid">
                        <td><img src="img/<%= itemBought.getName()%>.jpg" alt="" width="20%"></td>
                        <td><%= itemBought.getName()%></td>
                        <td class="price">$<%=itemBought.getPrice()%>/<%=itemBought.getUnit()%></td>
                        <td><%= itemBought.getQuantity()%></td>
                        <td>$<%= formatter.format(itemBought.getPrice()*itemBought.getQuantity())%></td>
                    </tr>
                    </tbody>
                <%}
                }
                }
            %>
            </table>
        </div>
    </div>
</div>

<jsp:include page="./layouts/footer.jsp"/>
</body>
</html>
