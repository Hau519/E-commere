
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product page</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
</head>
<body>
<div id="page-container">
    <jsp:include page="./layouts/header.jsp"></jsp:include>
    <h1>This is our products</h1>
    <jsp:include page="./layouts/footer.jsp"></jsp:include>
</div>
</body>
</html>
