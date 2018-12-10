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