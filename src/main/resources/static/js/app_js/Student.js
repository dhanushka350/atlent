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
    LicensePackages.getAllVehicalClasses();
    LicensePackages.getPackages();
    Student.allStudent();
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

$("#txt_nic").keyup(function () {

    Student.searchStudent();

});

$("#txt_regi_fee").keyup(function () {
    var license_price = parseInt($("#txt_license_type_price").val(), 10);
    var regi_fee = parseInt($("#txt_regi_fee").val(), 10);
    var payment = license_price + regi_fee;
    $("#txt_full_payment").val(parseFloat(Math.round(payment * 100) / 100).toFixed(2));
});

$("#txt_paid_amount").keyup(function () {
    var full_payment = parseInt($("#txt_full_payment").val(), 10);
    var paid = parseInt($("#txt_paid_amount").val(), 10);
    var balance = full_payment - paid;
    $("#txt_balance_payment").val(parseFloat(Math.round(balance * 100) / 100).toFixed(2));
});

$('#select_license_packages').on('change', function () {
    LicensePackages.getPackageByName();
});

/// student functions
var Student = {

    searchStudent: function () {
        var nic = $("#txt_nic").val();
        $.ajax({
            url: '/Student/check/before/registration',
            dataType: 'json',
            contentType: "application/json",
            type: 'POST',
            data: nic,
            success: function (data, textStatus, jqXHR) {
                $('#txt_nic').val(data.s_nic);
                $('#txt_name').val(data.s_name);
                $('#password').val(data.s_password);
                $('#formGender').selectpicker('val', data.s_gender).selectpicker('render');
                $('#txt_dob').val(data.s_date_of_birth);
                $('#txt_age').val(data.s_age);
                $('#txt_mobile').val(data.s_mobile);
                $('#txt_address').val(data.s_address);

                $("#select_license_packages").selectpicker('val', data.p_packageID);

                $("#txt_regi_fee").val(data.r_fee);

                $("#txt_full_payment").val(data.p_fullAmount);
                $("#txt_paid_amount").val(data.p_paidAmount);
                $("#txt_balance_payment").val(data.p_balancePayment);

                $("#select_report").selectpicker('val', data.m_isCollected).selectpicker('render');
                $("#txt_note").val(data.m_description);
                noty({text: "we found some information's linked with this NIC", layout: 'topRight', type: 'information'});
            },
            error: function (jqXHR, textStatus, errorThrown) {


            },
            beforeSend: function (xhr) {
                // noty({text: 'Requesting data..', layout: 'topRight', type: 'information'});
            }
        });
    },

    addNewStudent: function () {
        var today = new Date();
        var dd = today.getDate();
        var mm = today.getMonth() + 1; //January is 0!
        var yyyy = today.getFullYear();

        if (dd < 10) {
            dd = '0' + dd
        }

        if (mm < 10) {
            mm = '0' + mm
        }

        today = yyyy + '-' + mm + '-' + dd;

        var e = {};
        e["s_nic"] = $('#txt_nic').val();
        e["s_name"] = $('#txt_name').val();
        e["s_password"] = $('#password').val();
        e["s_gender"] = $('#formGender').val();
        e["s_date_of_birth"] = $('#txt_dob').val();
        e["s_age"] = $('#txt_age').val();
        e["s_mobile"] = $('#txt_mobile').val();
        e["s_address"] = $('#txt_address').val();

        e["p_packageID"] = $("#select_license_packages").val();
        e["r_date"] = today;
        e["fee"] = $("#txt_regi_fee").val();

        e["p_fullAmount"] = $("#txt_full_payment").val();
        e["p_paidAmount"] = $("#txt_paid_amount").val();
        e["p_balancePayment"] = $("#txt_balance_payment").val();

        e["m_isCollected"] = $("#select_report").val();
        e["m_description"] = $("#txt_note").val();
        var studentData = JSON.stringify(e);
        $.ajax({
            url: '/Student/save/student/details',
            dataType: 'json',
            contentType: "application/json",
            type: 'POST',
            data: studentData,
            success: function (data, textStatus, jqXHR) {
                $('#nic').val("");
                $('#name').val("");
                $('#password').val("");
                $('#date_of_birth').val("");
                $('#age').val("");
                $('#mobile').val("");
                $('#address').val("");
                $("#txt_regi_fee").val("");
                $("#txt_full_payment").val("");
                $("#txt_paid_amount").val("");
                $("#txt_balance_payment").val("");
                $("#txt_note").val("");
                location.reload();
                noty({text: 'Member registration complete.' + data.date, layout: 'topRight', type: 'success'});
            },
            error: function (jqXHR, textStatus, errorThrown) {
                noty({text: 'Member registration failed..' + errorThrown, layout: 'topRight', type: 'error'});
                console.log("error" + jqXHR + " - " + errorThrown);
                console.log(textStatus);
                console.log("R: " + jqXHR.status);
                console.log("R: " + jqXHR.responseText);

            },
            beforeSend: function (xhr) {

            }
        });

    },

    calculateAge: function () {

        var dob = $('#txt_dob').val();
        var fields = dob.split("-");
        dob = fields[0];
        var currentTime = new Date().getFullYear();
        $('#txt_age').val(currentTime - dob + " Years Old.");

    },

    allStudent: function (e) {
        $('#txt_student tbody tr td').remove();

        $.ajax({
            url: "/Student/all/student/list",
            dataType: 'json',
            contentType: "application/json",
            type: 'GET',
            success: function (data, textStatus, jqXHR) {
                if (data.nic === null) {
                    $('#txt_student').append('<tr>\n\
                               <td colspan=9><p align="center">No Records found\n\
                               </p></td>\n\
                               </tr>');
                } else {
                    for (var i = 0; i < data.length; i++) {
                        $('#txt_student').append('<tr>\n\
                                    <td>' + (i + 1) + '</td>\n\
                                    <td>' + data[i].name + '</td>\n\
                                    <td>' + data[i].nic + '</td>\n\
                                    <td>' + data[i].gender + '</td>\n\
                                    <td>' + data[i].date_of_birth + '</td>\n\
                                    <td>' + data[i].age + '</td>\n\
                                    <td>' + data[i].address + '</td>\n\
                                    <td>' + data[i].mobile + '</td>\n\
                                    <td><a href="#" class="btn btn-info btn-xs"><i class="fa fa-pencil"></i> Details </a></td>\n\
                                    </tr>');

                    }
                }

            },
            error: function (jqXHR, textStatus, errorThrown) {
                console.log(jqXHR + "---" + textStatus + "---" + errorThrown);
            },
            beforeSend: function (xhr) {

            }
        });
        e.preventDefault();
    }
};

/// License package functions
var LicensePackages = {


    getAllVehicalClasses: function () {

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
                                    <td>' + (i + 1) + '</td>\n\
                                    <td>' + data[i].vehicle_class + '</td>\n\
                                    <td>' + data[i].description + '</td>\n\
                                    <td>' + data[i].otherClasses + '</td>\n\
                                    <td>' + data[i].oldClass + '</td>\n\
                                    </tr>');

                    }
                }

            },
            error: function (jqXHR, textStatus, errorThrown) {
                console.log(jqXHR + "---" + textStatus + "---" + errorThrown);
            },
            beforeSend: function (xhr) {

            }
        });
    },
    getPackages: function () {
        $.ajax({
            url: "/license/packages/all/license/package/list",
            dataType: 'json',
            contentType: "application/json",
            type: 'GET',
            success: function (data, textStatus, jqXHR) {

                $('#select_license_packages')
                    .find('option')
                    .remove()
                    .end()
                    .append('<option>Select Package</option>')
                    .val('0');

                for (var i = 0; i < data.length; i++) {
                    $('#select_license_packages').append($('<option>', {
                        value: data[i].id,
                        text: data[i].name
                    }));
                }
                $("#select_license_packages").selectpicker("refresh");
            },
            error: function (jqXHR, textStatus, errorThrown) {
                console.log(jqXHR + "---" + textStatus + "---" + errorThrown);
            },
            beforeSend: function (xhr) {

            }
        });
    },
    getPackageByName: function () {
        var name = $("#select_license_packages").val();

        $.ajax({
            url: '/license/packages/get/license/package/by/name',
            dataType: 'json',
            contentType: "application/text",
            type: 'POST',
            data: name,
            success: function (data, textStatus, jqXHR) {
                //noty({text: 'package price loaded.. ', layout: 'topRight', type: 'success'});
                $("#txt_pack_price").val("LKR " + data.fee);
                $("#txt_license_type_price").val(data.fee);
                LicensePackages.setTable(data.list);
            },
            error: function (jqXHR, textStatus, errorThrown) {
                //noty({text: 'There was an error in getting package price.. ' + errorThrown, layout: 'topRight', type: 'error'});
                console.log("error" + jqXHR + " - " + errorThrown);
                console.log(textStatus);
                console.log("R: " + jqXHR.status);
                console.log("R: " + jqXHR.responseText);

            },
            beforeSend: function (xhr) {
                // noty({text: 'Requesting data..', layout: 'topRight', type: 'information'});
            }
        });

    },
    setTable: function (data) {
        $('#tbl_license_packages tbody tr td').remove();

        for (var i = 0; i < data.length; i++) {
            $('#tbl_license_packages').append('<tr>\n\
                                    <td>' + (i + 1) + '</td>\n\
                                    <td>' + data[i].vehicle_class + '</td>\n\
                                    <td>' + data[i].description + '</td>\n\
                                    <td>' + data[i].otherClasses + '</td>\n\
                                    <td>' + data[i].oldClass + '</td>\n\
                                    </tr>');

        }
    }
}