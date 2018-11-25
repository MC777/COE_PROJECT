<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
    <title>Currency Online Exchange</title>
    <link rel="stylesheet" type="text/css" href="styles/index.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
          type="text/css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<jsp:include page="/WEB-INF/fragments/header.jsp"/>

<header>
    <div class="overlay"></div>
    <video playsinline="playsinline" autoplay="autoplay" muted="muted" loop="loop">
        <%--<source src="https://storage.googleapis.com/coverr-main/mp4/Mt_Baker.mp4" type="video/mp4">--%>
        <source src="./resources/loop.mp4" type="video/mp4">
    </video>
    <div class="container h-100">
        <div class="d-flex text-center h-100">
            <div class="my-auto w-100 text-white">
                <h1 class="display-3">Video Header</h1>
                <h2>With HTML5 Video and Bootstrap 4</h2>
            </div>
        </div>
    </div>
</header>

<div class="container mt-5">
    <div class="alert alert-success" role="alert">
        <strong>Test</strong> Text for test.
    </div>

</div>
<%@ include file="/WEB-INF/fragments/footer.jsp" %>
<script src="webjars/bootstrap/4.0.0-2/js/bootstrap.js"></script>
</body>
</html>
