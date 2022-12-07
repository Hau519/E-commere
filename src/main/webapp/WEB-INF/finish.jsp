<%@ page import="models.entities.Customer" %>
<%@ page import="models.entities.Order" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%
  Customer user = (Customer) session.getAttribute("userLogin");
  Order newOrder = (Order) session.getAttribute("newOrder");
%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Farm Fresh</title>
  <link rel="stylesheet" href="css/styles.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css"/>
  <link rel="Shortcut Icon" href="img/miniapple.png" type="image/x-icon">
</head>
<body>
<jsp:include page="./layouts/header.jsp"/>
<div id="page-container">
  <section>
    <div>
      <h1>Thank you! Your order is completed</h1>
      <h2>Order number is: <%= newOrder.getOrderNumber()%> </h2>
      <h3>You will be receiving a confirmation email to <%=user.getEmail()%> with order details</h3>
    </div>
  </section>
  <a href="${pageContext.request.contextPath}/products">Explore more products</a>


  <jsp:include page="./layouts/footer.jsp"/>
</div>
</body>

</html>