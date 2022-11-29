<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
</head>
<body>
<jsp:include page="./layouts/header.jsp"/>
<div id="page-container">
    <div class="background">
        <div class="myForm">
            <div class="regi_form" >
                <div>
                    <h2><b>Sign Up</b></h2>
                </div>
                <form method="POST" action="index.html">
                    <div class="txtb">
                        <label>First name : </label><span class="error"></span>
                        <input type="text" placeholder='Please enter your First name.' name="fName" id="name"></p>

                        <label>Last name : </label><span class="error"></span>
                        <input type="text" placeholder='Please enter your Last name.' name="lName" id="name"></p>

                        <label>Enter your date of birth : </label><span class="error"></span>
                        <input type="text" placeholder="dd-mm-yyyy" name="dob">

                        <label>Enter your phone number : </label><span class="error"></span>
                        <input type="tel" placeholder='Please enter your Phone number. ' name="phone">

                        <label>Enter your email : </label><span class="error"></span>
                        <input type="email" placeholder='Please enter your E-mail. ' name="email">

                        <label>Enter your password : </label><span class="error"></span>
                        <input type="password" placeholder='Please enter your Password. ' name="password">
                    </div>
                    <input type='submit' class='signup_btn' value='SIGN UP'>
                    <div class="bottom-text"><p>Come back to <a href='login.html' target="_blank"> <b> Log-in</b></a></p>
                    </div>
                </form>

            </div>

        </div>

    </div>
</div>
<jsp:include page="./layouts/footer.jsp"/>
</body>
</html>
