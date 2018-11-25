<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

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
                        <security:authorize access="isAuthenticated()">
                        <li><a href="#">Settings</a></li>
                        </security:authorize>
                        <li role="separator" class="divider"></li>
                        <security:authorize access="isAuthenticated()">
                            <form action="/myLogout" method="post">
                                <button type="submit" class="btn btn-primary">Log Out</button>
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