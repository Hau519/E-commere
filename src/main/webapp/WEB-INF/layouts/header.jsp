<%
    String username = (String) request.getAttribute("username");
%>

<div id="showcase">
    <div class="header-container">
        <div id="branding">
            <a href="#"><img src="${pageContext.request.contextPath}/img/logo1.png" width="80%" alt="logo"></a>
        </div>
        <nav>
            <ul>
                <li class="current"><a href="home.jsp">Home</a></li>
                <li><a href="${pageContext.request.contextPath}/products">Products</a></li>
                <li><a href="#">Our Story</a></li>
                <li><a href="#">Login</a></li>
                <li><a href="#"><img src="./img/cart.png" width="2.3%"></a></li>
            </ul>
        </nav>
    </div>
</div>

