<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<html lang="en">
<head>
    <link rel="stylesheet" type="text/css" href="css/header.css"/>
    <link rel="stylesheet" type="text/css" href="css/footer.css"/>
    <link rel="stylesheet" type="text/css" href="css/home.css"/>
    <link rel="stylesheet" type="text/css" href="css/index.css"/>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Currency Online Exchange</title>
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
        <source src="https://storage.googleapis.com/coverr-main/mp4/Mt_Baker.mp4" type="video/mp4">
        <%--<source src="./resources/loop.mp4" type="video/mp4">--%>
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
                                <input class="form-control" type="number" placeholder="I have:"
                                       id="exchangeValueFromInput">
                            </div>
                            <div class="form-group">
                                <select class="custom-select custom-select-lg" id="exchangeCurrencyFromSelect">
                                    <option value="PLN">PLN</option>
                                    <option value="USD">USD</option>
                                    <option value="GBP">GBP</option>
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
                                <input class="form-control form-control-lg" type="number" placeholder="I want:" id="exchangeValueToInput"
                                       disabled>
                            </div>
                            <div class="form-group">
                                <select class="custom-select custom-select-lg" id="exchangeCurrencyToSelect">
                                    <option value="USD">USD</option>
                                    <option value="EUR">EUR</option>
                                    <option value="PLN">PLN</option>
                                    <option value="4">AUD</option>
                                    <option value="5">GBP</option>
                                    <option value="6">CAD</option>
                                </select>
                            </div>
                            <button type="button" class="btn btn-primary currencyExchangeBtn" id="currencyExchangeBtn">Exchange
                                Now
                            </button>
                            <security:authorize access="isAuthenticated()">
                                <button type="button" class="btn btn-success currencyBuyBtn" id="currencyBuyBtn">Buy Now
                                </button>
                            </security:authorize>
                        </div>
                    </form>
                </div>
                <div class="cardsView">
                    <div class="row">
                        <div class="col-sm-3">
                            <div class="card text-white bg-dark mb-3">
                                <div class="card-header">USD <i class="fas fa-arrow-circle-right"></i> PLN</div>
                                <div class="card-body">
                                    <p class="card-text">4.31</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="card text-white bg-dark mb-3">
                                <div class="card-header">EUR <i class="fas fa-arrow-circle-right"></i> PLN</div>
                                <div class="card-body">
                                    <p class="card-text">5.21</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="card text-white bg-dark mb-3">
                                <div class="card-header">GBP <i class="fas fa-arrow-circle-right"></i> PLN</div>
                                <div class="card-body">
                                    <p class="card-text">4.39</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="card text-white bg-dark mb-3">
                                <div class="card-header">CHF <i class="fas fa-arrow-circle-right"></i> PLN</div>
                                <div class="card-body">
                                    <p class="card-text">6.33</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <security:authorize access="isAuthenticated()">
        <script type="text/javascript" src="https://code.jquery.com/jquery-1.8.2.js"></script>
        <script type="text/javascript" src="js/home.js"></script>
        <div class='popup' id="welcomePopup">
            <div class='cnt223'>
                <h1>WELCOME</h1>
                <p>
                    You've successfully logged in as <b> <security:authentication property="principal.username"/></b>
                    user.
                    <br/>
                    <br/>
                    <a href='' class='close'>CLOSE</a>
                </p>
            </div>
        </div>
    </security:authorize>
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
</body>
</html>