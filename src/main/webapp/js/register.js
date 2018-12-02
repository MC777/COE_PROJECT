/*function validform() {

    var baseForm = $('#register_form');
    baseForm.submit();
}*/

$(document).ready(function () {
    $('#register_form').validate({
        rules: {
            name: "required",
            surname: "required",
            email_address: {
                required: true,
                email: true
            },
            username: {
                required: true,
                minlength: 3
            },
            password: {
                required: true,
                minlength: 4
            },
            confirm_password: {
                required: true,
                minlength: 4,
                equalTo: "#password"
            },
            pesel: "required",
            phone_number: "required",
            address: "required",
            postal_code: "required",
            city: "required"
        },
        messages:{
            name:"Please enter your name",
            surname:"Please enter your surname",
            email_address:"Pleaase provide your email address",
            username:{
                required: "Please provide your username",
                minlenght: "Your username must be at least 3 characters long"
            },
            password:{
                required: "Please provide a password",
                minlenght: "Your password must be at least 4 characters long"
            },
            confirm_password:{
                required: "Please provide a password",
                minlenght: "Your password must be at least 4 characters long",
                equalTo:"Please enter the same password as above"
            },
            pesel:"Please enter your pesel",
            phone_number:"Please enter your phone number",
            address:"Please enter your address",
            postal_code:"Please enter your postal code",
            city:"Please enter your city"
        }
    });
});