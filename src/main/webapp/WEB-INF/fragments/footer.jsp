<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="/register.jsp"/>
<footer>
    <div class="footer-bottom">
        <div class="container h-100">
            <div class="row">
                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 footer-copyright">
                    &copy; 2018 Copyright: CEO
                </div>
                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 footer-register">
                    <security:authorize access="!isAuthenticated()">
                        <a href="#registerModal" class="btn btn-danger" data-toggle="modal">
                            <span>REGISTER</span></a>
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