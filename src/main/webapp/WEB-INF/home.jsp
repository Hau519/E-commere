<%@ page contentType="text/html;charset=UTF-8" %>
<%
    String message = (String) request.getAttribute("message");

%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Farm Fresh</title>
    <link rel="stylesheet" href="css/styles.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css"/>
</head>
<body>
<jsp:include page="./layouts/header.jsp"/>
<div id="page-container">
    <section>
        <div id="header-img">
            <img src="img/header4.jpg" width="100%" alt="header">
            <div id="ad">
                <p>Welcome to Farm Fresh</p>
            </div>
        </div>
        <div>
            <p id="inseason">What's in Season</p>
            <div id="container">
                <img src="img/vegetables.jpg" width="45%">
                <div id="in-season1">Pre-order our products</div>
                <div id="pre-order">
                    <p class="order-btn">
                        <input type="submit" value="Pre-Order">
                    </p>
                </div>
                <div class="box">
                    <div class="in-season">
                        <img src="./img/spring.jpg" width="95%" height="80%">
                        <p class="season-1">Spring</p>
                    </div>
                    <div class="in-season">
                        <img src="./img/summer.jpg" width="95%" height="80%">
                        <p class="season-2">Summer</p>
                    </div>
                    <div class="in-season">
                        <img src="./img/winter.jpg" width="95%" height="80%">
                        <p class="season-3">Winter</p>
                    </div>
                    <div class="in-season">
                        <img src="./img/automn.jpg" width="95%" height="80%">
                        <p class="season-4">Autumn</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <form action="${pageContext.request.contextPath}/Products" method="get">
        <label for="name-filter-id">Filter by name</label>
        <input name="name-filter" id="name-filter-id"/>
        <button type="submit"></button>
    </form>

<jsp:include page="./layouts/footer.jsp"/>
</div>
</body>

</html>