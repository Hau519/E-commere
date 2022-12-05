
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

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
        <div class="dd1">
            <tr class="cart-items">
                <td><button type="button" class="btn btn-danger"> Remove</button></td>
                <td><img src="img/Apple.jpg" alt=""></td>
                <td>Apple</td>
                <td class="price">$5.99</td>
                <td><input type="number" value="1" name="" class="quanity"></td>
                <td>$5.99</td>
            </tr>
        </div>
        <div class="dd1">
            <tr class="cart-items">
                <td><button type="button" class="btn btn-danger">Remove</button></td>
                <td><img src="img/Chicken.jpg"  alt=""></td>
                <td>Chiken</td>
                <td class="price">$9.99</td>
                <td><input type="number" value="1" name="" class="quanity"></td>
                <td>$9.99</td>
            </tr>
        </div>
        <div class="dd1">
            <tr class="cart-items">
                <td><button type="button" class="btn btn-danger"> Remove</button></td>
                <td><img src="img/eggs.jpg"  alt=""></td>
                <td>Egg</td>
                <td class="price">$8.19</td>
                <td><input type="number" value="1" name="" class="quanity"></td>
                <td>$8.19</td>
            </tr>
        </div>
        </tbody>
    </table>
</section>




<section id="cart-add" class="section-p1">

    <div id="cuopon">
        <h3>Apply Coupon</h3>
        <div>
            <input type="text" name="" id="" placeholder="Enter Your Coupon">
            <button class="normal">Apply</button>
        </div>
    </div>

    <div id="subtotal">
        <h3>Cart Totals</h3>
        <table>
            <tr>
                <td>Cart Subtotal</td>
                <td class="dooha">$ 174.17</td>
            </tr>
            <tr>
                <td>Shipping</td>
                <td>Free</td>
            </tr>
            <tr>
                <td><strong>TVQ Tax</strong></td>
                <td><strong  class="dooha2">$ 17.42</strong></td>
            </tr>
            <tr>
                <td><strong> TPS Tax</strong></td>
                <td><strong  class="dooha3">$ 8.71</strong></td>
            </tr>
            <tr>
                <td><strong>Total Including 15% Tax</strong></td>
                <td><strong  class="dooha1">$ 200.30</strong></td>
            </tr>
        </table>
        <button class="normal" onclick="window.location.href='payment.html'; validation1()">Proceed to checkout</button>
    </div>
</section>

<jsp:include page="./layouts/footer.jsp"/>
</body>

</html>
