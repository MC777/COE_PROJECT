<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div id="registerModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
            <script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
            <script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/additional-methods.min.js"></script>
            <form name="my-form" id="register_form" action="/register" method="post">
                <div class="modal-header">
                    <h4 class="modal-title">Register Form</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                </div>
                <div class="modal-body">
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
                    <div class="modal-footer">
                        <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                        <input type="submit" class="btn btn-success" value="Register">
                        <%--<button type="submit" class="btn btn-success btn-block" id="register">
                            Register
                        </button>--%>
                    </div>
                </div>
            </form>
            <script>
                $("#my-form").validate();
            </script>
        </div>
    </div>
</div>
<script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery/jquery-1.4.4.min.js"></script>
<script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.7/jquery.validate.min.js"></script>
</body>
<script type="text/javascript" src="js/register.js"></script>
<!-- Bootstrap core JavaScript-->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
</html>