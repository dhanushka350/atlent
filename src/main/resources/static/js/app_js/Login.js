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
    noty({text: 'checking....', layout: 'topRight', type: 'information'});
    $.post("login/request/authorization",
        {
            name: name,
            password: password

        }, function (result) {
            if (result) {
                var name = $("#txt_name").val();
                $.session.remove("Logged_User");
                $.session.set("Logged_User", name);
                window.location.replace("/dashboard");
            } else {
                noty({text: 'wrong user name or password!', layout: 'topRight', type: 'error'});
            }

        });
}