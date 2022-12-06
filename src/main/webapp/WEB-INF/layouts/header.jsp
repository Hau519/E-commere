<%
    String username = (String) session.getAttribute("username");
%>

<div id="showcase">
    <div class="header-container">
        <div id="branding">
            <a href="${pageContext.request.contextPath}/home"><img src="${pageContext.request.contextPath}/img/logo1.png" width="80%" alt="logo"></a>
        </div>
        <nav>
            <ul>
                <li><p>Welcome <%= username %></p></li>
                <li><a href="${pageContext.request.contextPath}/home">Home</a></li>
                <li><a href="${pageContext.request.contextPath}/about">Our Story</a></li>
                <li><a href="${pageContext.request.contextPath}/products">Products</a></li>
                <li><a href="${pageContext.request.contextPath}/login">Login</a></li>
                <li><a href="${pageContext.request.contextPath}/register">Register</a></li>
                <li><a href="${pageContext.request.contextPath}/cart"><img src="./img/cart.png" width="2.3%"></a></li>
            </ul>
        </nav>
    </div>
</div>

