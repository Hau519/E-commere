<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Register</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
<<<<<<< Updated upstream
    <link rel="Shortcut Icon" href="img/miniapple.png" type="image/x-icon">
=======
    <script>
        function validate(){
            let fName = document.form.fName.value;
            let lName = document.form.lName.value;
            let email = document.form.email.value;
            let password = document.form.password.value;
            let phone = document.form.phone.value;

            if (fName==="" && lName===""){
                alert("Please enter your first and last name");
                return false;
            }else if (email===""){
                alert("Please enter your email")
            }else if (password===""){
                alert("Please enter your password")
            }else if (phone===""){
                alert("Please enter your phone number")
            }
        }
    </script>
>>>>>>> Stashed changes
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
                <form action="${pageContext.request.contextPath}/register" method="post" onsubmit="return validate()">
                    <div class="txtb">
                        <label>First name : </label>
                        <input type="text" placeholder='Please enter your first name.' name="fName">

                        <label>Last name : </label>
                        <input type="text" placeholder='Please enter your last name.' name="lName">

                        <label>Enter your date of birth : </label>
                        <input type="text" placeholder="dd-mm-yyyy" name="dob">

                        <label>Enter your phone number : </label>
                        <input type="tel" placeholder='Please enter your phone number. ' name="phone">

                        <label>Enter your email : </label>
                        <input type="email" placeholder='Please enter your e-mail. ' name="email">

                        <label>Enter your password : </label>
                        <input type="password" placeholder='Please enter your password. ' name="password">
                    </div>
                    <input type='submit' class='signup_btn' value='Register' name="register">
                    <div class="bottom-text"><p>Come back to <a href='${pageContext.request.contextPath}/login' target="_blank"> <b> Log-in</b></a>
                    </div>
                </form>

            </div>

        </div>

    </div>
</div>
<jsp:include page="./layouts/footer.jsp"/>
</body>
</html>
