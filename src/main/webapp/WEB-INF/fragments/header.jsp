<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<style>
    .navbar {
        background-color: #2E2E2E !important;
        position: static;
    }

    .dropdown-menu > li > a:hover,
    .dropdown-menu > li > a:focus {
        color: white;
        text-decoration: white;
        background-color: green;
    }

    .nav > li > a:hover,
    .nav > li > a:focus {
        text-decoration: white;
        background-color: white;
    }

    .navbar .navbar-nav > li > a:hover, .navbar .navbar-nav > li > a:focus {
        background-color: black;
        color: white;
    }

    .collapse ul.navbar-nav > li > a {
        color: white;
    }
</style>

<nav class="navbar navbar-expand-lg">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#"><b class="glyphicon glyphicon-menu-right"></b></a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li><a href="#">Exchange</a></li>
                <li><a href="#">Cryptocurrency</a></li>
                <li><a href="#">Gold</a></li>
                <li><a href="#">Wallet</a></li>
                <li><a href="#">Conntact</a></li>
            </ul>


            <ul class="nav navbar-nav navbar-right">

                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                       aria-expanded="false"><i class="glyphicon glyphicon-user"></i> User <span
                            class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Signed as: User</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#">Contact</a></li>
                        <security:authorize access="!isAuthenticated()">
                        <li><a href="/registerForm">Register</a></li>
                        </security:authorize>
                        <li><a href="#">Settings</a></li>
                        <li role="separator" class="divider"></li>
                        <security:authorize access="isAuthenticated()">
                            <form action="/myLogout" method="post">
                            <button type="button" class="btn btn-primary">Log Out</button>
                            </form>
                        </security:authorize>

                        <security:authorize access="!isAuthenticated()">
                            <a href="/loginForm">
                                <button type="button" class="btn btn-success">Log In</button>
                            </a>
                        </security:authorize>
                        </li>
                    </ul>

                </li>
            </ul>
        </div>
    </div>
</nav>