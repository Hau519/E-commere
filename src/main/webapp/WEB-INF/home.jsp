
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String message = (String) request.getAttribute("message");

%>



<html>
<head>
    <title>Home page</title>
</head>
<body>
<div id="page-container">
    <jsp:include page="../layouts/header.jsp"></jsp:include>
    <h1>Welcome to our farm</h1>
    <h2><%= message %></h2>
    <jsp:include page="../layouts/footer.jsp"></jsp:include>
</div>

</body>
</html>
