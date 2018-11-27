<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#"><b class="glyphicon glyphicon-chevron-right"></b></a>
        </div>

        <div id="navbar" class="navbar-collapse collapse">
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
                        <security:authorize access="isAuthenticated()">
                            <li style="padding-left: 18px">Signed as: <b><security:authentication
                                    property="principal.username"/></b></li>
                            <li role="separator" class="divider"></li>
                        </security:authorize>
                        <li><a href="#">Contact</a></li>
                        <security:authorize access="!isAuthenticated()">
                            <li><a href="/registerForm">Register</a></li>
                        </security:authorize>
                        <security:authorize access="isAuthenticated()">
                            <li><a href="#">Settings</a></li>
                        </security:authorize>
                        <li role="separator" class="divider"></li>
                        <security:authorize access="isAuthenticated()">
                            <form action="/myLogout" method="post" style="padding-left: 18px; margin-bottom: 0;">
                                <button type="submit" class="btn btn-xs btn-warning">Log Out</button>
                            </form>
                        </security:authorize>

                        <security:authorize access="!isAuthenticated()">
                            <a href="/loginForm" style="padding-left: 18px">
                                <button type="button" class="btn btn-xs btn-success">Log In</button>
                            </a>
                        </security:authorize>
                    </ul>

                </li>
            </ul>
        </div>
    </div>
</nav>