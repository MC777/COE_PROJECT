<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <link rel="stylesheet" type="text/css" href="css/index.css"/>
    <link rel="stylesheet" type="text/css" href="css/header.css"/>
    <link rel="stylesheet" type="text/css" href="css/footer.css"/>
    <link rel="stylesheet" type="text/css" href="css/register.css"/>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Register form</title>

    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap theme -->
    <link href="/css/bootstrap-theme.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="/css/theme.css" rel="stylesheet">
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
          integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript"
            src="https://cdn.jsdelivr.net/npm/jquery-validation@1.17.0/dist/jquery.validate.min.js"></script>
    <script type="text/javascript"
            src="https://cdn.jsdelivr.net/npm/jquery-validation@1.17.0/dist/additional-methods.min.js"></script>
    <script type="text/javascript" src="js/register.js"></script>
</head>
<body>
<jsp:include page="/WEB-INF/fragments/header.jsp"/>
<div class="container h-100">
    <main class="my-form">
        <div class="cotainer register_background">
            <%--<div class="row justify-content-md-center">--%>
            <div class="col-md-8">
                <div class="card justify-content-md-center">
                    <form name="my-form" id="register_form" action="/register" method="post">
                        <div class="form-group row">
                            <label for="name" class="col-md-4 col-form-label text-md-right">Name</label>
                            <div class="col-md-6">
                                <input type="text" id="name" class="form-control" name="name">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="surname" class="col-md-4 col-form-label text-md-right">Surname</label>
                            <div class="col-md-6">
                                <input type="text" id="surname" class="form-control" name="surname">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="email_address" class="col-md-4 col-form-label text-md-right">E-Mail
                                Address</label>
                            <div class="col-md-6">
                                <input type="text" id="email_address" class="form-control" name="emailAddress">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="username" class="col-md-4 col-form-label text-md-right">Username</label>
                            <div class="col-md-6">
                                <input type="text" id="username" class="form-control" name="username">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="password" class="col-md-4 col-form-label text-md-right">Password</label>
                            <div class="col-md-6">
                                <input type="password" id="password" class="form-control" name="password">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="confirm_password" class="col-md-4 col-form-label text-md-right">Confirm
                                Password</label>
                            <div class="col-md-6">
                                <input type="password" id="confirm_password" class="form-control"
                                       name="confirm_password">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="pesel" class="col-md-4 col-form-label text-md-right">PESEL</label>
                            <div class="col-md-6">
                                <input type="text" id="pesel" class="form-control" name="pesel">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="phone_number" class="col-md-4 col-form-label text-md-right">Phone
                                Number</label>
                            <div class="col-md-6">
                                <input type="text" id="phone_number" class="form-control" name="phoneNumber">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="address" class="col-md-4 col-form-label text-md-right">Address</label>
                            <div class="col-md-6">
                                <input type="text" id="address" class="form-control" name="address">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="postal_code" class="col-md-4 col-form-label text-md-right">Postal
                                code</label>
                            <div class="col-md-6">
                                <input type="text" id="postal_code" class="form-control" name="postalCode">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="city" class="col-md-4 col-form-label text-md-right">City</label>
                            <div class="col-md-6">
                                <input type="text" id="city" class="form-control" name="city">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="city" class="col-md-4 col-form-label text-md-right">Citizenship</label>
                            <div class="col-md-6">
                                <input type="text" id="citizenship" class="form-control" name="citizenship">
                            </div>
                        </div>

                        <div class="form-group row">
                            <button type="submit" class="btn btn-success btn-block" id="register">
                                Register
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </main>
</div>
</body>
</html>


