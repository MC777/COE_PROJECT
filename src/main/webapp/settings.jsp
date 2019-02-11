<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Settings</title>
    <link rel="stylesheet" type="text/css" href="css/header.css"/>
    <link rel="stylesheet" type="text/css" href="css/footer.css"/>
    <link rel="stylesheet" type="text/css" href="css/settings.css"/>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap core CSS -->
    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap theme -->
    <link href="/css/bootstrap-theme.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="/css/theme.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
          integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
    <link href="https://gitcdn.github.io/bootstrap-toggle/2.2.2/css/bootstrap-toggle.min.css" rel="stylesheet">
</head>
<body>
<jsp:include page="/WEB-INF/fragments/header.jsp"/>
<jsp:include page="/WEB-INF/fragments/editEmployeeModal.jsp"/>
<header>
    <div class="container h-100">
        <div class="d-flex text-center h-100">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-subtitle">SETTINGS</h4>
                    <table class="table table-hover">
                        <thead>
                        <tr class="table-success">
                            <th scope="col" style="width: 1%">#</th>
                            <th scope="col" style="width: 2%">Option</th>
                            <th scope="col" style="width: 10%">Action</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <th scope="row">1</th>
                            <td>Personal data</td>
                            <td>
                                <a href="#editEmployeeModal" class="edit" data-toggle="modal">Edit</a>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">2</th>
                            <td>Default currency</td>
                            <td>
                                <select class="custom-select" id="inputGroupSelect01">
                                    <option selected>PLN</option>
                                    <option value="1">USD</option>
                                    <option value="2">GBP</option>
                                    <option value="3">CHF</option>
                                </select>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</header>
<jsp:include page="/WEB-INF/fragments/footer.jsp"/>
<script
        src="https://code.jquery.com/jquery-3.3.1.min.js"
        integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
        integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
        integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
        crossorigin="anonymous"></script>
<script src="https://gitcdn.github.io/bootstrap-toggle/2.2.2/js/bootstrap-toggle.min.js"></script>
</body>
</html>