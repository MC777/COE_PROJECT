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