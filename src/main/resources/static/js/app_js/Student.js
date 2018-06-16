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
// total_hours_wasted_here = 18min:
//
// Dhanushka


$("#txt_dob").keyup(function () {

    Student.calculateAge();

});

$("#btn_submit").click(function (e) {

    Student.addNewStudent();

    e.preventDefault();
});
var Student = {

    addNewStudent: function (e) {

        var e = {};
        e["nic"] = $('#txt_nic').val();
        e["name"] = $('#txt_name').val();
        e["password"] = $('#password').val();
        e["gender"] = $('#formGender').val();
        e["date_of_birth"] = $('#txt_dob').val();
        e["age"] = $('#txt_age').val();
        e["mobile"] = $('#txt_mobile').val();
        e["address"] = $('#txt_address').val();

        var d = JSON.stringify(e);
        console.log("HO: " + d);
        $.ajax({
            url: '/Student/save/student/details',
            dataType: 'json',
            contentType: "application/json",
            type: 'POST',
            data: d,
            success: function (data, textStatus, jqXHR) {
                $('#nic').val("");
                $('#name').val("");
                $('#password').val("");
                $('#gender').val("");
                $('#date_of_birth').val("");
                $('#age').val("");
                $('#mobile').val("");
                $('#address').val("");
                location.reload();
            },
            error: function (jqXHR, textStatus, errorThrown) {
                console.log("error" + jqXHR + " - " + errorThrown);
                console.log(textStatus);
                console.log("R: " + jqXHR.status);
                console.log("R: " + jqXHR.responseText);

            },
            beforeSend: function (xhr) {

            }
        });
        e.preventDefault();
    },

    calculateAge: function () {

        var dob = $('#txt_dob').val();
        var fields = dob.split("-");
        dob = fields[0];
        var currentTime = new Date().getFullYear();
        $('#txt_age').val(currentTime - dob + " Years Old.");

    }
}