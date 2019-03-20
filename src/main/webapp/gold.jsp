<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <link rel="stylesheet" type="text/css" href="css/header.css"/>
    <link rel="stylesheet" type="text/css" href="css/footer.css"/>
    <link rel="stylesheet" type="text/css" href="css/gold.css"/>
    <link rel="stylesheet" type="text/css" href="css/index.css"/>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Gold</title>
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
<header>
    <div class="overlay"></div>
    <video playsinline="playsinline" autoplay="autoplay" muted="muted" loop="loop">
        <source src="./resources/loop.mp4" type="video/mp4">
    </video>
    <div class="container h-100">
        <div class="d-flex text-center h-100">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-subtitle">Exchange currency from here</h5>
                </div>
                <div class="card-body bg-light">
                    <form class="form-inline well">
                        <div class="row">
                            <div class="form-group">
                                <input class="form-control" type="text" placeholder="I have:">
                            </div>
                            <div class="form-group">
                                <select class="custom-select custom-select-lg">
                                    <option value="1">BTC</option>
                                    <option value="2">ETH</option>
                                    <option value="3">DASH</option>
                                    <option value="4">LTC</option>
                                    <option value="5">NEO</option>
                                    <option value="6">XRP</option>
                                    <option value="7">EOS</option>
                                    <option value="8">NEM</option>
                                    <option value="9">ADA</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <i class="fa fa-refresh fa-spin"></i>
                            </div>
                            <div class="form-group">
                                <input class="form-control form-control-lg" type="text" placeholder="I want:">
                            </div>
                            <div class="form-group">
                                <select class="custom-select custom-select-lg">
                                    <option value="1">USD</option>
                                    <option value="2">EUR</option>
                                    <option value="3">INR</option>
                                    <option value="4">AUD</option>
                                    <option value="5">GBP</option>
                                    <option value="6">CAD</option>
                                </select>
                            </div>
                            <button type="button" class="btn btn-primary goldExchangeBtn" id="goldExchangeBtn">Exchange
                                Now
                            </button>
                            <security:authorize access="isAuthenticated()">
                                <button type="button" class="btn btn-success goldBuyBtn" id="goldBuyBtn">Buy Now
                                </button>
                            </security:authorize>
                        </div>
                    </form>
                </div>
                <!-- Area Chart Example-->
                <div id="content-wrapper" style="margin-top: 20px">
                    <div class="container-fluid">
                        <div class="card mb-3">
                            <div class="card-header">
                                <i class="fas fa-chart-area"></i>
                                Gold Prices - Last 10 days
                            </div>
                            <div class="card-body">
                                <canvas id="myAreaChart" width="100%" height="30"></canvas>
                            </div>
                        </div>
                    </div>
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
<!-- Core plugin JavaScript-->
<script src="vendor/jquery-easing/jquery.easing.min.js"></script>
<!-- Page level plugin JavaScript-->
<script src="vendor/chart.js/Chart.min.js"></script>
<!-- Custom scripts for all pages-->
<script src="js/sb-admin.js"></script>
<script type="text/javascript" src="js/gold.js"></script>
</body>
</html>
