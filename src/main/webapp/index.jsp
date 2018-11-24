<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
    <title>Currency Online Exchange</title>
    <jsp:include page="/cssLoader.jsp"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
          type="text/css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="theme.css" type="text/css">
</head>
<body>
<jsp:include page="/WEB-INF/fragments/header.jspf"/>
<div class="container mt-5">
    <div class="alert alert-success" role="alert">
        <strong>Test</strong> Text for test.
    </div>

</div>
<%@ include file="/WEB-INF/fragments/footer.jspf" %>
<script src="webjars/bootstrap/4.0.0-2/js/bootstrap.js"></script>
</body>
</html>
