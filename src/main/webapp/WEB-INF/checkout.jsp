
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

<div>
    <div>
        <h1>Checkout</h1>

        <div class="delivery">
                <h2>Billing Address</h2>
                <label for="fname"> Full Name</label>
                <input type="text" id="fname" name="fullname" placeholder="Enter your full name">
            <br>
                <label for="address"> Address</label>
                <input type="text" id="address" name="address" placeholder="123 Lasalle Street">
            <br>
            <label for="city"> City</label>
                <input type="text" id="city" name="city" placeholder="Montreal">
                <div class="col-50">
                    <label for="postcode">Post code</label>
                    <input type="text" id="postcode" name="postcode" placeholder="A1B2CD">
                </div>
        </div>

        <div class="payment-method">
            <h2>Payment method</h2>
            <label for="card" class="method card">
                <div class="card-logos">
                    <img style="width: 20%" src="${pageContext.request.contextPath}/img/visa_logo.png"/>
                    <img src="${pageContext.request.contextPath}/img/mastercard_logo.png"/>
                </div>

                <div class="radio-input">
                    <input id="card" type="radio" name="payment">
                    Pay with credit card
                </div>
            </label>

            <label for="paypal" class="method paypal">
                <img style="width: 20%" src="${pageContext.request.contextPath}/img/paypal_logo.png"/>
                <div class="radio-input">
                    <input id="paypal" type="radio" name="payment">
                    Pay with PayPal
                </div>
            </label>
        </div>
    </div>

    <div class="panel-footer">
        <a href="${pageContext.request.contextPath}/cart">Go back to shopping cart</a>
        <a href="${pageContext.request.contextPath}/finish">Pay</a>
    </div>
</div>

<jsp:include page="./layouts/footer.jsp"/>
</body>

</html>
