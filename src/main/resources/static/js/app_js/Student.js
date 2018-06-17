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


// on load actions
$(function () {
    LicensePackages.getAllPackage();
});


// call function - calculate student age
$("#txt_dob").keyup(function () {

    Student.calculateAge();

});
// call function save student
$("#btn_submit").click(function (e) {

    Student.addNewStudent();

    e.preventDefault();
});

/// student functions
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
};

/// License package functions
var LicensePackages = {


    getAllPackage: function () {

        $('#tbl_license_packages tbody tr td').remove();

        $.ajax({
            url: "/Category/all/license/categories",
            dataType: 'json',
            contentType: "application/json",
            type: 'GET',
            success: function (data, textStatus, jqXHR) {

                if (data.id === null) {
                    $('#tbl_license_packages').append('<tr>\n\
                               <td colspan=9><p align="center">Packages not found in database\n\
                               </p></td>\n\
                               </tr>');
                } else {
                    $('#select_license_packages')
                        .find('option')
                        .remove()
                        .end()
                        .append('<option>Nothing selected</option>')
                        .val('0');
                    for (var i = 0; i < data.length; i++) {
                        $('#tbl_license_packages').append('<tr>\n\
                                    <td>' + (i+1) + '</td>\n\
                                    <td>' + data[i].vehicle_class + '</td>\n\
                                    <td>' + data[i].description + '</td>\n\
                                    <td>' + data[i].otherClasses + '</td>\n\
                                    <td>' + data[i].oldClass + '</td>\n\
                                    <td>' + data[i].price + '</td>\n\
                                    <td>' + data[i].pictograph + '</td>\n\
                                    </tr>');

                        $('#select_license_packages').append($('<option>', {
                            value: data[i].id,
                            text: data[i].vehicle_class
                        }));

                    }
                }

            },
            error: function (jqXHR, textStatus, errorThrown) {
                console.log(jqXHR + "---" + textStatus + "---" + errorThrown);
            },
            beforeSend: function (xhr) {

            }
        });
    }
}