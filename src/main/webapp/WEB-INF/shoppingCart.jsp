<%@ page import="models.entities.Products" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="models.entities.ShoppingCart" %>
<%@ page import="java.text.DecimalFormat" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<% ArrayList<ShoppingCart> cartList = (ArrayList<ShoppingCart>) session.getAttribute("cartList");
    if (cartList == null) cartList = new ArrayList<ShoppingCart>();
    float total = 0;
    DecimalFormat formatter = new DecimalFormat("#0.00");
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Shopping Cart</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
    <link rel="Shortcut Icon" href="img/miniapple.png" type="image/x-icon">
</head>
<body>
<jsp:include page="./layouts/header.jsp"/>
<section id="cart" class="section-p1">
    <table width="100%" id="table1">
        <thead>
        <tr>
            <td>Remove</td>
            <td>Image</td>
            <td>Product</td>
            <td>Price</td>
            <td>Quantity</td>
            <td>Subtotal</td>
        </tr>
        </thead>

        <tbody>
        <% if (cartList.isEmpty()){%>
        <h1>Your cart is empty</h1>
        <%} else{%>
        <% for(ShoppingCart item: cartList){%>
        <div class="dd1">
            <tr class="cart-items">
                <td><a href="Remove?index=<%=cartList.indexOf(item)%>">Remove</a></td>
                <td><img src="img/<%= item.getName()%>.jpg" alt=""></td>
                <td><%= item.getName()%></td>
                <td class="price">$<%=item.getPrice()%>/<%=item.getUnit()%></td>

                <td>
                    <a href="quantity?action=0&index=<%=cartList.indexOf(item)%>">-</a>
                    <input type="number" value="<%=item.getQuantity()%>" name="" class="quanity" readonly>
                    <a href="quantity?action=1&index=<%=cartList.indexOf(item)%>">+</a>
                </td>

                <td>$<%= formatter.format(item.getPrice()*item.getQuantity())%></td>
                <% total = total + item.getQuantity()*item.getPrice();%>
            </tr>
        </div>
        <%}
        }%>
        </tbody>
    </table>
    <a href="${pageContext.request.contextPath}/products">Continue shopping</a>
</section>

<section id="cart-add" class="section-p1">

    <div id="cuopon">
        <h3>Apply Coupon</h3>
        <div>
            <input type="text" name="" id="" placeholder="Enter Your Coupon">
            <button class="normal">Apply</button>
        </div>
    </div>
    <form action="${pageContext.request.contextPath}/checkout" id="subtotal">
    <div >
        <h3>Cart Totals</h3>
        <table>
            <tr>
                <td>Cart Subtotal</td>
                <td class="dooha" name="subtotal">$<%= formatter.format(total)%></td>
            </tr>
            <tr>
                <td>Shipping</td>
                <td>Free</td>
            </tr>
            <tr>
                <td><strong>QST Tax</strong></td>
                <td><strong  class="dooha2">$<%=  formatter.format(total*0.0975)%></strong></td>
            </tr>
            <tr>
                <td><strong> GST Tax</strong></td>
                <td><strong  class="dooha3">$ <%=formatter.format(total*0.05)%></strong></td>
            </tr>
            <tr>
                <td><strong>Total Including 14.75% Tax</strong></td>
                <td><strong  class="dooha1" name="total">$ <%= formatter.format(total*1.1475)%></strong></td>
            </tr>
        </table>
        <button class="normal" type="submit">Proceed to checkout</button>
    </div>
    </form>
</section>

<jsp:include page="./layouts/footer.jsp"/>
</body>

</html>
