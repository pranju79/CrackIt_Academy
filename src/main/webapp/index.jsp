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

    <!-- Sign in  Form -->
    <section class="sign-in">
        <div class="container">
            <div class="signin-content">
                <div class="signin-image">
                    <figure>
                        <img src="images/signin-image.jpg" alt="sing up image">
                    </figure>
                    <a href="registration.jsp" class="signup-image-link">Create an account for User</a>
                    <a href="adminLog.jsp" class="signup-image-link">Admin Sign in</a>
                </div>

                <div class="signin-form">
                <br><br>
                    <h2 class="form-title">SIGN IN</h2>
                    <form action="Login" method="post" class="register-form" id="login-form" onsubmit="return validateForm()">
                        <div class="form-group">
                            <label for="username"><i class="zmdi zmdi-account material-icons-name"></i></label>
                            <input type="text" name="username" id="username" placeholder="Your Name" required />
                        </div>
                        <div class="form-group">
                            <label for="password"><i class="zmdi zmdi-lock"></i></label>
                            <input type="password" name="password" id="password" placeholder="Password" required />
                        </div>
                        <div class="form-group">
                            <input type="checkbox" name="remember-me" id="remember-me" class="agree-term" />
                            <label for="remember-me" class="label-agree-term"><span><span></span></span>Remember me</label>
                        </div>
                        <div class="form-group form-button">
                            <input type="submit" name="signin" id="signin" class="form-submit" value="Log in" />
                        </div>
                    </form>
                    
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
        var username = document.getElementById("username").value;
        var password = document.getElementById("password").value;

        // Simple email validation
        if (!username.includes("@") || !username.includes(".")) {
            alert("Invalid email address");
            return false;
        }

        // Password length validation
        if (password.length < 6) {
            alert("Password must be at least 6 characters long");
            return false;
        }

        // All validations passed
        return true;
    }

    var status = document.getElementById("status").value;
    if (status == "failed") {
        swal("Sorry", "Wrong Username and Password", "error");
    }

</script>

</body>
</html>
