<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>CrackIt Academy</title>

<!-- Font Icon -->
<link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="css/lstyle.css">
</head>

<body>

<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">

<div class="main">

    <!-- Sign up form -->
    <section class="signup">
        <div class="container">
            <div class="signup-content">
                <div class="signup-form">
                    <h2 class="form-title">Sign up</h2>
                
                    <form method="post" action="RegistrationServlet" class="register-form" id="register-form" onsubmit="return validateForm()">
                        <div class="form-group">
                            <label for="name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                            <input type="text" name="name" id="name" placeholder="Your Name" />
                            <span id="name-error" class="error-message"></span>
                        </div>
                        <div class="form-group">
                            <label for="email"><i class="zmdi zmdi-email"></i></label>
                            <input type="email" name="email" id="email" placeholder="Your Email" />
                            <span id="email-error" class="error-message"></span>
                        </div>
                        <div class="form-group">
                            <label for="pass"><i class="zmdi zmdi-lock"></i></label>
                            <input type="password" name="pass" id="pass" placeholder="Password" />
                            <span id="pass-error" class="error-message"></span>
                        </div>
                        <div class="form-group">
                            <label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
                            <input type="password" name="re_pass" id="re_pass" placeholder="Repeat your password" />
                            <span id="re-pass-error" class="error-message"></span>
                        </div>
                        <div class="form-group">
                            <label for="contact"><i class="zmdi zmdi-phone"></i></label>
                            <input type="text" name="contact" id="contact" placeholder="Contact no" />
                            <span id="contact-error" class="error-message"></span>
                        </div>
                        <div class="form-group">
                            <input type="checkbox" name="agree-term" id="agree-term" class="agree-term" />
                            <label for="agree-term" class="label-agree-term"><span><span></span></span>I agree all statements in <a href="#" class="term-service">Terms of service</a></label>
                            <span id="agree-term-error" class="error-message"></span>
                        </div>
                        <div class="form-group form-button">
                            <input type="submit" name="signup" id="signup" class="form-submit" value="Register" />
                        </div>
                    </form>
                </div>
                <div class="signup-image">
                    <figure>
                        <img src="images/signup-image.jpg" alt="sign up image">
                    </figure>
                    <a href="index.jsp" class="signup-image-link">I am already member</a>
                </div>
            </div>
        </div>
    </section>

</div>
<!-- JS -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="js/main.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<link rel="stylesheet" href="alert/dist/sweetalert.css">

<script type="text/javascript">
function validateForm() {
    var name = document.getElementById("name").value;
    var email = document.getElementById("email").value;
    var password = document.getElementById("pass").value;
    var rePass = document.getElementById("re_pass").value;
    var contact = document.getElementById("contact").value;
    var agreeTerm = document.getElementById("agree-term").checked;

    var emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/;
    var contactPattern = /^\d{10}$/;
    var isValid = true;

    // Name validation
    if (name.trim() === "") {
        document.getElementById("name-error").innerText = "Name is required";
        document.getElementById("name-error").style.color = "red";
        isValid = false;
    } else {
        document.getElementById("name-error").innerText = "";
    }

    // Email validation
    if (!emailPattern.test(email)) {
        document.getElementById("email-error").innerText = "Invalid email address";
        document.getElementById("email-error").style.color = "red";
        isValid = false;
    } else {
        document.getElementById("email-error").innerText = "";
    }

    // Password validation
    if (password.length < 6) {
        document.getElementById("pass-error").innerText = "Password must be at least 6 characters long";
        document.getElementById("pass-error").style.color = "red";
        isValid = false;
    } else {
        document.getElementById("pass-error").innerText = "";
    }

    // Repeat password validation
    if (rePass !== password) {
        document.getElementById("re-pass-error").innerText = "Passwords do not match";
        document.getElementById("re-pass-error").style.color = "red";
        isValid = false;
    } else {
        document.getElementById("re-pass-error").innerText = "";
    }

    // Contact number validation
    if (!contactPattern.test(contact)) {
        document.getElementById("contact-error").innerText = "Contact number must be 10 digits";
        document.getElementById("contact-error").style.color = "red";
        isValid = false;
    } else {
        document.getElementById("contact-error").innerText = "";
    }

    // Agree to terms validation
    if (!agreeTerm) {
        document.getElementById("agree-term-error").innerText = "You must agree to the terms of service";
        document.getElementById("agree-term-error").style.color = "red";
        isValid = false;
    } else {
        document.getElementById("agree-term-error").innerText = "";
    }

    return isValid;
}

var status = document.getElementById("status").value;
if (status == "success") {
    swal("Congrats", "Account Created Successfully", "success");
}

</script>

</body>
</html>
