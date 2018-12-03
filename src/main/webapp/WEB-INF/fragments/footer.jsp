<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<footer>
    <div class="footer-bottom">
        <div class="container h-100">
            <div class="row">
                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 footer-copyright">
                    &copy; 2018 Copyright: CEO
                </div>
                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 footer-register">
                    <security:authorize access="!isAuthenticated()">
                        <a href="/registerForm"
                           class="btn btn-sm btn-danger btn-rounded footer-register">REGISTER</a>
                    </security:authorize>
                </div>
                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 footer-social">
                    <a target="_blank" rel="noopener noreferrer" href="https://github.com/MC777/COE_PROJECT/"><i
                            class="fab fa-github"></i></a>
                </div>
            </div>
        </div>
    </div>
</footer>