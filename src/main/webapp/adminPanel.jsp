<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="css/header.css"/>
    <link rel="stylesheet" type="text/css" href="css/footer.css"/>
    <link rel="stylesheet" type="text/css" href="css/adminPanel.css"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Admin Panel</title>
    <link rel="stylesheet" type="text/css" href="css/index.css"/>
    <!-- Bootstrap core CSS -->
    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap theme -->
    <link href="/css/bootstrap-theme.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="/css/theme.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
          integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
</head>
<body>
<jsp:include page="/WEB-INF/fragments/header.jsp"/>
<jsp:include page="/WEB-INF/fragments/addEmployeeModal.jsp"/>
<jsp:include page="/WEB-INF/fragments/editEmployeeModal.jsp"/>
<jsp:include page="/WEB-INF/fragments/deleteEmployeeModal.jsp"/>
<div class="container">
    <div class="table-wrapper">
        <div class="table-title">
            <div class="row">
                <div class="col-sm-6">
                    <h2>Users Details - Admin Panel</h2>
                </div>
                <div class="col-sm-6">
                    <a href="#addEmployeeModal" class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i>
                        <span>Add New User</span></a>
                    <a href="#deleteEmployeeModal" class="btn btn-danger" data-toggle="modal"><i class="material-icons">&#xE15C;</i>
                        <span>Delete</span></a>
                </div>
            </div>
        </div>
        <table class="table table-striped table-hover">
            <thead>
            <tr>
                <th>
							<span class="custom-checkbox">
								<input type="checkbox" id="selectAll">
								<label for="selectAll"></label>
							</span>
                </th>
                <th>Name</th>
                <th>Surname</th>
                <th>Pesel</th>
                <th>Email</th>
                <th>Address</th>
                <th>City</th>
                <th>Postal code</th>
                <th>Phone</th>
                <th>Citizenship</th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>
							<span class="custom-checkbox">
								<input type="checkbox" id="checkbox1" name="options[]" value="1">
								<label for="checkbox1"></label>
							</span>
                </td>
                <td>Thomas</td>
                <td>Hardy</td>
                <td>11111111</td>
                <td>thomashardy@mail.com</td>
                <td>89 Chiaroscuro Rd, Portland, USA</td>
                <td>Portland</td>
                <td>PE023</td>
                <td>USA</td>
                <td>(171) 555-2222</td>
                <td>
                    <a href="#editEmployeeModal" class="edit" data-toggle="modal"><i class="material-icons"
                                                                                     data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                    <a href="#deleteEmployeeModal" class="delete" data-toggle="modal"><i class="material-icons"
                                                                                         data-toggle="tooltip"
                                                                                         title="Delete">&#xE872;</i></a>
                </td>
            </tr>
            <tr>
                <td>
							<span class="custom-checkbox">
								<input type="checkbox" id="checkbox2" name="options[]" value="1">
								<label for="checkbox2"></label>
							</span>
                </td>
                <td>Dominique</td>
                <td>Perrier</td>
                <td>22222222</td>
                <td>dominiqueperrier@mail.com</td>
                <td>Obere Str. 57, Berlin, Germany</td>
                <td>Berlin</td>
                <td>23-233</td>
                <td>DE</td>
                <td>(313) 555-5735</td>
                <td>
                    <a href="#editEmployeeModal" class="edit" data-toggle="modal"><i class="material-icons"
                                                                                     data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                    <a href="#deleteEmployeeModal" class="delete" data-toggle="modal"><i class="material-icons"
                                                                                         data-toggle="tooltip"
                                                                                         title="Delete">&#xE872;</i></a>
                </td>
            </tr>
            <tr>
                <td>
							<span class="custom-checkbox">
								<input type="checkbox" id="checkbox3" name="options[]" value="1">
								<label for="checkbox3"></label>
							</span>
                </td>
                <td>Maria</td>
                <td>Anders</td>
                <td>3333333333</td>
                <td>mariaanders@mail.com</td>
                <td>25, rue Lauriston, Paris, France</td>
                <td>Paris</td>
                <td>ss34ff</td>
                <td>FR</td>
                <td>(503) 555-9931</td>
                <td>
                    <a href="#editEmployeeModal" class="edit" data-toggle="modal"><i class="material-icons"
                                                                                     data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                    <a href="#deleteEmployeeModal" class="delete" data-toggle="modal"><i class="material-icons"
                                                                                         data-toggle="tooltip"
                                                                                         title="Delete">&#xE872;</i></a>
                </td>
            </tr>
            <tr>
                <td>
							<span class="custom-checkbox">
								<input type="checkbox" id="checkbox4" name="options[]" value="1">
								<label for="checkbox4"></label>
							</span>
                </td>
                <td>Fran</td>
                <td>Wilson</td>
                <td>44444444</td>
                <td>franwilson@mail.com</td>
                <td>C/ Araquil, 67, Madrid, Spain</td>
                <td>Madrid</td>
                <td>ASD123</td>
                <td>SP</td>
                <td>(204) 619-5731</td>
                <td>
                    <a href="#editEmployeeModal" class="edit" data-toggle="modal"><i class="material-icons"
                                                                                     data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                    <a href="#deleteEmployeeModal" class="delete" data-toggle="modal"><i class="material-icons"
                                                                                         data-toggle="tooltip"
                                                                                         title="Delete">&#xE872;</i></a>
                </td>
            </tr>
            <tr>
                <td>
							<span class="custom-checkbox">
								<input type="checkbox" id="checkbox5" name="options[]" value="1">
								<label for="checkbox5"></label>
							</span>
                </td>
                <td>Martin</td>
                <td>Blank</td>
                <td>55555555</td>
                <td>martinblank@mail.com</td>
                <td>Via Monte Bianco 34, Turin, Italy</td>
                <td>Turin</td>
                <td>31-222</td>
                <td>IT</td>
                <td>(480) 631-2097</td>
                <td>
                    <a href="#editEmployeeModal" class="edit" data-toggle="modal"><i class="material-icons"
                                                                                     data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                    <a href="#deleteEmployeeModal" class="delete" data-toggle="modal"><i class="material-icons"
                                                                                         data-toggle="tooltip"
                                                                                         title="Delete">&#xE872;</i></a>
                </td>
            </tr>
            </tbody>
        </table>
        <div class="clearfix">
            <div class="hint-text">Showing <b>5</b> out of <b>25</b> entries</div>
            <ul class="pagination">
                <li class="page-item disabled"><a href="#">Previous</a></li>
                <li class="page-item"><a href="#" class="page-link">1</a></li>
                <li class="page-item"><a href="#" class="page-link">2</a></li>
                <li class="page-item active"><a href="#" class="page-link">3</a></li>
                <li class="page-item"><a href="#" class="page-link">4</a></li>
                <li class="page-item"><a href="#" class="page-link">5</a></li>
                <li class="page-item"><a href="#" class="page-link">Next</a></li>
            </ul>
        </div>
    </div>
</div>
<jsp:include page="/WEB-INF/fragments/footer.jsp"/>
<script type="text/javascript" src="js/adminPanel.js"></script>
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
</body>
</html>
