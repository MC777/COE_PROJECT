<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<html lang="en">
<head>
    <link rel="stylesheet" type="text/css" href="css/header.css"/>
    <link rel="stylesheet" type="text/css" href="css/footer.css"/>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Currency Online Exchange</title>

    <link rel="stylesheet" type="text/css" href="css/index.css"/>
    <!-- Bootstrap core CSS -->
    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap theme -->
    <link href="/css/bootstrap-theme.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="/css/theme.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
          integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
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
                                <input class="form-control" type="number" placeholder="1200"
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
                                <input class="form-control form-control-lg" type="number" id="exchangeValueToInput"
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
                        </div>
                    </form>
                </div>
                <div class="card-body text-center">
                    <button type="button" class="btn btn-primary" id="currencyExchangeBtn">Exchange Now</button>
                </div>
            </div>
        </div>
    </div>


    <security:authorize access="isAuthenticated()">
        <script type="text/javascript" src="https://code.jquery.com/jquery-1.8.2.js"></script>
        <style type="text/css">
            #overlay {
                position: fixed;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                background-color: #000;
                filter: alpha(opacity=70);
                -moz-opacity: 0.7;
                -khtml-opacity: 0.7;
                opacity: 0.7;
                z-index: 100;
                display: none;
            }

            .cnt223 a {
                text-decoration: none;
            }

            .popup {
                width: 100%;
                margin: 0 auto;
                display: none;
                position: fixed;
                z-index: 101;
            }

            .cnt223 {
                min-width: 600px;
                width: 600px;
                min-height: 150px;
                margin: 100px auto;
                background: #f3f3f3;
                position: relative;
                z-index: 103;
                padding: 15px 35px;
                border-radius: 5px;
                box-shadow: 0 2px 5px #000;
            }

            .cnt223 p {
                clear: both;
                color: #555555;
                /* text-align: justify; */
                font-size: 20px;
                font-family: sans-serif;
            }

            .cnt223 p a {
                color: #d91900;
                font-weight: bold;
            }

            .cnt223 .x {
                float: right;
                height: 35px;
                left: 22px;
                position: relative;
                top: -25px;
                width: 34px;
            }

            .cnt223 .x:hover {
                cursor: pointer;
            }
        </style>


        <script type='text/javascript'>
            $(function () {
                if (sessionStorage.getItem('#welcomePopup') !== 'true') {

                    var overlay = $('<div id="overlay"></div>');
                    overlay.show();
                    overlay.appendTo(document.body);
                    $('.popup').show();
                    $('.close').click(function () {
                        $('.popup').hide();
                        overlay.appendTo(document.body).remove();
                        return false;
                    });
                    sessionStorage.setItem('#welcomePopup', 'true')
                }


                $('.x').click(function () {
                    $('.popup').hide();
                    overlay.appendTo(document.body).remove();
                    return false;
                });
            });
        </script>

        <script>
            var alertmessage = "Alert Popup message goes here"
            var once_per_session = 1

            function get_cookie(Name) {
                var search = Name + "="
                var returnvalue = "";
                if (document.cookie.length > 0) {
                    offset = document.cookie.indexOf(search)
                    if (offset != -1) {
                        offset += search.length
                        end = document.cookie.indexOf(";", offset);
                        if (end == -1)
                            end = document.cookie.length;
                        returnvalue = unescape(document.cookie.substring(offset, end))
                    }
                }
                return returnvalue;
            }

            function alertornot() {
                if (get_cookie('alerted') == '') {
                    loadalert()
                    document.cookie = "alerted=yes"
                }
            }

            function loadalert() {
                alert(alertmessage)
            }

            if (once_per_session == 0)
                loadalert()
            else
                alertornot()
        </script>


        <div class='popup' id="welcomePopup">
            <div class='cnt223'>
                <h1>WELCOME</h1>
                <p>
                    I've been successfully log in with <b> <security:authentication property="principal.username"/></b>
                    username.
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

<script>
    $('#currencyExchangeBtn').click(function () {
        var exchangeValueFromInput = $('#exchangeValueFromInput').val();
        var exchangeValueToInput = $('#exchangeValueToInput').val();
        var exchangeCurrencyFromSelect = $('#exchangeCurrencyFromSelect').val();
        var exchangeCurrencyToSelect = $('#exchangeCurrencyToSelect').val();

        $.ajax({
            type: "POST",
            url: "/exchange",
            headers: {
                'Accept': 'application/json',
                'Content-Type': 'application/json'
            },
            data: JSON.stringify({
                exchangeValueFrom: exchangeValueFromInput,
                exchangeValueTo: exchangeValueToInput,
                exchangeCurrencyFrom: exchangeCurrencyFromSelect,
                exchangeCurrencyTo: exchangeCurrencyToSelect
            }),
            success: function (result) {
                $('#exchangeValueToInput').val(result);
            },
            error: function (result) {
                console.log(result);
                alert(result.responseJSON.errorMessage || result.responseJSON.message);
            }
        })
    })

</script>