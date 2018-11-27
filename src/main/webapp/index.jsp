<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" type="text/css" href="styles/header.css"/>
    <link rel="stylesheet" type="text/css" href="styles/footer.css"/>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Currency Online Exchange</title>

    <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
          integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="styles/index.css"/>
    <!-- Bootstrap core CSS -->
    <link href="/styles/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap theme -->
    <link href="/styles/bootstrap-theme.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="/styles/theme.css" rel="stylesheet">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
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
                                <input class="form-control" type="text" value="1.02458">
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
                                <input class="form-control form-control-lg" type="text" value="9526.39">
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
                        </div>
                    </form>
                </div>
                <div class="card-body text-center">
                    <button type="button" class="btn btn-primary">Exchange Now</button>
                </div>
            </div>
        </div>
    </div>
</header>
<%@ include file="/WEB-INF/fragments/footer.jsp" %>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
        integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
        integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
        crossorigin="anonymous"></script>
</body>
</html>