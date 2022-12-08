<%@ page import="models.entities.Customer" %>
<%@ page import="models.entities.Order" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Customer user = (Customer) session.getAttribute("userLogin");
    Order newOrder = (Order) session.getAttribute("newOrder");
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
    <div class="Login_bg">
        <div class="login-form">
            <div class="log_form" >
                <div>
                    <h2><b>Profile</b></h2>
                </div>



            </div>
        </div>
    </div>
</div>
<jsp:include page="./layouts/footer.jsp"/>
</body>
</html>
