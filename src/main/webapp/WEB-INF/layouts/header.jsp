<%@ page import="models.entities.Customer" %><%
    String username = (String) session.getAttribute("username");
    Customer userLogin = (Customer) session.getAttribute("userLogin");
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
                <% if(userLogin==null){%>
                <li><a href="${pageContext.request.contextPath}/login">Login</a></li>
                <li><a href="${pageContext.request.contextPath}/register">Register</a></li>
                <%} else{%>
                <li><a href="${pageContext.request.contextPath}/logout">Logout</a></li>
                <li><a href="${pageContext.request.contextPath}/profile">Profile</a></li>
                <%}%>
                <li><a href="${pageContext.request.contextPath}/cart"><img src="./img/cart.png" width="2.3%"></a></li>
            </ul>
        </nav>
    </div>
</div>

