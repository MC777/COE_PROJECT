function validform() {

    var a = document.forms["my-form"]["name"].value;
    var b = document.forms["my-form"]["surname"].value;
    var c = document.forms["my-form"]["email-address"].value;
    var d = document.forms["my-form"]["pesel"].value;
    var e = document.forms["my-form"]["phone-number"].value;
    var f = document.forms["my-form"]["address"].value;
    var g = document.forms["my-form"]["postal-code"].value;
    var h = document.forms["my-form"]["city"].value;

    if (a == null || a == "") {
        alert("Please Enter Your Name");
        return false;
    } else if (b == null || b == "") {
        alert("Please Enter Your Surname");
        return false;
    } else if (c == null || c == "") {
        alert("Please Enter Your Email Address");
        return false;
    } else if (c == null || d == "") {
        alert("Please Enter Your Pesel");
        return false;
    } else if (d == null || e == "") {
        alert("Please Enter Your Phone-number");
        return false;
    } else if (e == null || f == "") {
        alert("Please Enter Your Address");
        return false;
    } else if (e == null || g == "") {
        alert("Please Enter Your Postal Code");
        return false;
    } else if (e == null || h == "") {
        alert("Please Enter Your City");
        return false;
    }
}