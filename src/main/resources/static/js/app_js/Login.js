
// Dear programmer:
// When I wrote this code, only god and
// I knew how it worked.
// Now, only god knows it!
//
// Therefore, if you are trying to optimize
// this routing and it fails (most surely),
// please increase this counter as a
// warning for the next person:
//
// total_hours_wasted_here = 8min:
//
// Dhanushka

$("#loginButton").click(function (e) {
    login();
    e.preventDefault();
});

function login() {
    var name = $("#txt_name").val();
    var password = $("#txt_password").val();

    login.addLoggedUser = function () {
        var name = $("#name").val();
        $.session.remove("Logged_User");
        $.session.set("Logged_User", name);
    };
    $.post("login/request/authorization",
        {
            name: name,
            password: password

        }, function (result) {
            if (result) {
                login.addLoggedUser();
                alert("wada");
                window.location.replace("/admin_dashboard");


            } else if (result === false) {
                toastr.warning('Login failed!', 'check your user name and password and try again');
            }

        });
}