var regiFee;
$(function () {

    payment.getPackages();

});

$("#txt_nic").keyup(function () {

    payment.searchStudent();

});

$("#btn_add_payment").click(function (e) {
    payment.addPayment();
    e.preventDefault();
});
$("#txt_total").keyup(function () {

    payment.calculateBalancePayment();

});

$('#select_license_packages').on('change', function () {

    payment.getPaymentHistory();

});

var payment = {
        searchStudent: function () {
            var nic = $("#txt_nic").val();
            $.ajax({
                url: '/Student/check/before/registration',
                dataType: 'json',
                contentType: "application/json",
                type: 'POST',
                data: nic,
                success: function (data, textStatus, jqXHR) {
                    $('#txt_student_name').val(data.s_name);
                    $("#txt_regi_fee").val("LKR " + data.r_fee);
                    regiFee = data.r_fee;
                    payment.getPackages();
                    noty({text: "payment information loaded..", layout: 'topRight', type: 'information'});
                },
                error: function (jqXHR, textStatus, errorThrown) {
                    // noty({
                    //     text: 'sorry we can not access payment information.. \n please contact developers',
                    //     layout: 'topRight',
                    //     type: 'error'
                    // });

                },
                beforeSend: function (xhr) {
                    // noty({text: 'Requesting data..', layout: 'topRight', type: 'information'});
                }
            });
        },
        getPackages: function () {
            var nic = $("#txt_nic").val();
            $.ajax({
                url: "/license/packages/get/license/package/for/payment",
                dataType: 'json',
                contentType: "application/text",
                type: 'GET',
                data: "nic=" + nic,
                success: function (data, textStatus, jqXHR) {

                    $('#select_license_packages')
                        .find('option')
                        .remove()
                        .end()
                        .append('<option>Registered Packages</option>')
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
        getPaymentHistory: function () {
            var nic = $("#txt_nic").val();
            var package = $("#select_license_packages").val();
            var searchData = nic + "@" + package;
            $('#tbl_payment_history tbody tr td').remove();
            $.ajax({
                url: "/payment/get/payment/history",
                dataType: 'json',
                contentType: "application/json",
                type: 'POST',
                data: searchData,
                success: function (data, textStatus, jqXHR) {
                    if (data.length <= 0) {
                        $('#tbl_payment_history').append('<tr>\n\
                               <td colspan=9><p align="center">No Records found\n\
                               </p></td>\n\
                               </tr>');
                    } else {
                        $("#txt_full_payment").val(data[0].fullAmount);
                        var Amount = 0;
                        for (var i = 0; i < data.length; i++) {

                            $('#tbl_payment_history').append('<tr>\n\
                                    <td style="font-size: x-small;font-weight: bold">' + (i + 1) + '</td>\n\
                                    <td style="font-size: x-small;font-weight: bold">' + data[i].date + '</td>\n\
                                    <td style="font-size: x-small;font-weight: bold">' + data[i].fullAmount + '</td>\n\
                                    <td style="font-size: x-small;font-weight: bold">' + data[i].paidAmount + '</td>\n\
                                    <td style="font-size: x-small;font-weight: bold">' + data[i].balancePayment + '</td>\n\
                                    </tr>');

                            var paid = parseInt(data[i].paidAmount);
                            Amount = (paid + Amount);
                            console.log(parseFloat(Math.round(Amount * 100) / 100).toFixed(2));
                        }


                        $("#txt_paid_amount").val(Amount);
                        var licensePrice = parseFloat(Math.round($("#txt_full_payment").val() * 100) / 100).toFixed(2);
                        licensePrice = parseFloat(Math.round((licensePrice - regiFee) * 100) / 100).toFixed(2);
                        $("#txt_license_type_price").val(licensePrice);

                        var to_pay = parseFloat(Math.round($("#txt_full_payment").val() * 100) / 100).toFixed(2);
                        to_pay = parseFloat(Math.round((to_pay - Amount) * 100) / 100).toFixed(2);
                        $("#txt_to_pay").val(to_pay);
                    }
                },
                error: function (jqXHR, textStatus, errorThrown) {

                },
                beforeSend: function (xhr) {

                }
            });
        },
        calculateBalancePayment: function () {
            var to_pay = parseFloat(Math.round($("#txt_to_pay").val() * 100) / 100).toFixed(2);
            var amount = parseFloat(Math.round($("#txt_total").val() * 100) / 100).toFixed(2);
            var balance = parseFloat(Math.round((to_pay - amount) * 100) / 100).toFixed(2);
            $("#txt_balance_payment").val(balance);
        },
        addPayment: function () {
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
            var user = $.session.get("Logged_User");

            if (user === "undefined") {
                window.location.replace("/");
            } else {
                var e = {};
                e["paymentID"] = $('#select_license_packages').val();
                e["studentNIC"] = $('#txt_nic').val();
                e["date"] = today;
                e["fullAmount"] = $('#txt_full_payment').val();
                e["paidAmount"] = $('#txt_total').val();
                e["balancePayment"] = $('#txt_balance_payment').val();
                e["staffMember"] = user;

                var paymentData = JSON.stringify(e);
                $.ajax({
                    url: '/payment/do/student/payments',
                    dataType: 'json',
                    contentType: "application/json",
                    type: 'POST',
                    data: paymentData,
                    success: function (data, textStatus, jqXHR) {
                        if (data) {
                            noty({text: 'Payment Details saved.', layout: 'topRight', type: 'success'});
                        } else if (data === false) {
                            noty({text: "An error occurred!", layout: 'topRight', type: 'error'});
                        }

                        $("#txt_license_type_price").val("");
                        $("#txt_full_payment").val("");
                        $("#txt_paid_amount").val("");
                        $("#txt_to_pay").val("");
                        $("#txt_total").val("");
                        $("#txt_balance_payment").val("");
                        window.location.replace("/student/payments");

                    },
                    error: function (jqXHR, textStatus, errorThrown) {
                        noty({
                            text: "Something went wrong.. \n please double check selected package,NIC and other required data.. \n if you can't find the problem please contact developers." + textStatus,
                            layout: 'topRight',
                            type: 'error'
                        });
                        console.log("error" + jqXHR + " - " + errorThrown);
                        console.log(textStatus);
                        console.log("R: " + jqXHR.status);
                        console.log("R: " + jqXHR.responseText);

                    },
                    beforeSend: function (xhr) {

                    }
                });
            }

        }

    }
;