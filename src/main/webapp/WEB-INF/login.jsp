
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Login</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
    <link rel="Shortcut Icon" href="img/miniapple.png" type="image/x-icon">
</head>
<body>
<jsp:include page="./layouts/header.jsp"/>
<div id="page-container">
    <div class="Login_bg">
        <div class="login-form">
            <div class="log_form" >
                <div>
                    <h2><b>Login</b></h2>
                </div>
                <form>
                    <div class="txtb">
                        <label>Email : </label><span class="error"></span>
                        <input type="email" placeholder='Please enter your e-mail. ' name="email">
                        <label>Password : </label><span class="error"></span>
                        <input type="password" placeholder='Please enter your password. ' name="password">
                    </div>
                    <input type='submit' class='login_btn' value='LOG IN'>
                    <div class="bottomtext">
                        <p>Don't have an account? <a href='${pageContext.request.contextPath}/register' target="_blank"><b> Register here!</b></a></p>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<jsp:include page="./layouts/footer.jsp"/>
</body>
</html>
