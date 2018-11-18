<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="login.css" type="text/css" />
</head>
<body>
<div class="login-page">
    <div class="form">
        <form class="register-form">
            <input type="text" placeholder="name" name="username"/>
            <input type="password" placeholder="password" name="password"/>
            <input type="text" placeholder="email address" name="email"/>
            <button>create</button>
            <p class="message">Already registered? <a href="#">Sign In</a></p>
        </form>
        <form class="login-form">
            <input type="text" placeholder="username" name="username"/>
            <input type="password" placeholder="password" name="password"/>
            <button>login</button>
            <p class="message">Not registered? <a href="#">Create an account</a></p>
        </form>
    </div>
</div>
</body>
</html>
