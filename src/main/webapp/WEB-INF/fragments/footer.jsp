<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<footer>
    <div class="footer-bottom">
        <div class="container">
            <div class="row">
                <div class="col-md-4 footer-copyright">
                    &copy; 2018 Copyright: CEO
                </div>
                <div class="col-md-4 footer-register">
                    <security:authorize access="!isAuthenticated()">
                        <ul class="list-unstyled list-inline text-center py-2">
                            <li class="list-inline-item">
                                <a href="#!" class="btn btn-sm btn-danger btn-rounded">REGISTER</a>
                            </li>
                        </ul>
                    </security:authorize>
                </div>
                <div class="col-md-4 footer-social">
                    <a target="_blank" rel="noopener noreferrer" href="https://github.com/MC777/COE_PROJECT/"><i
                            class="fab fa-github"></i></a>
                </div>
            </div>
        </div>
    </div>
</footer>