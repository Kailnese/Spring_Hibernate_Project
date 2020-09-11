<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
    <meta charset="utf-8">
    <title></title>
    <script src="jquery/jquery-3.5.1.min.js"></script>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css">
</head>
<body>
<div class="show-login-btn"><i class="fas fa-sign-in-alt"></i> Login With Account</div>
<div class="login-box">
    <div class="hide-login-btn"><i class="fas fa-times"></i></div>
    <form class="login-form" action="login/verify" method="post">
        <h1>Welcome</h1>
        <input class="txtb" type="text" name="Username" placeholder="Username">
        <input class="txtb" type="password" name="Password" placeholder="Password">
        <input class="login-btn" type="submit" name="" value="Login">
        <a href="www.google.com" class="regist-btn">Regist Now</a>
        <a href="www.google.com" class="forgot-btn">Forget Password</a>
    </form>
</div>
<script type="text/javascript">
    $(".show-login-btn").on("click", function(){
        $(".login-box").toggleClass("showed");
    });
    $(".hide-login-btn").on("click", function(){
        $(".login-box").toggleClass("showed");
    });
</script>
</body>
</html>
