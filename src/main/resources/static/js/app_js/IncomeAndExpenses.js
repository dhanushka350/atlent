$("#btn_save_expense").click(function (e) {

    income.addExpense();

    e.preventDefault();
});
$('#select_date').on('change', function () {
    income.allIncomeByBranchAndDate();
});
$('#select_branch').on('change', function () {
    income.allIncomeByBranchAndDate();
});
$('#select_date2').on('change', function () {
    income.allExpensesByBranchAndDate();
});
$('#select_branch2').on('change', function () {
    income.allExpensesByBranchAndDate();
});


function checkTime(i) {
    if (i < 10) {
        i = "0" + i
    }
    ;  // add zero in front of numbers < 10
    return i;
};
var income = {
        allBranches: function () {


            $.ajax({
                url: "/control/branches/all/branch/list",
                dataType: 'json',
                contentType: "application/json",
                type: 'GET',
                success: function (data, textStatus, jqXHR) {
                    $('#select_branch')
                        .find('option')
                        .remove()
                        .end()
                        .append('<option>Select Branch</option>')
                        .val('0');
                    $('#select_branch2')
                        .find('option')
                        .remove()
                        .end()
                        .append('<option>Select Branch</option>')
                        .val('0');

                    for (var i = 0; i < data.length; i++) {
                        $('#select_branch').append($('<option>', {
                            value: data[i].id,
                            text: data[i].name
                        }));
                        $('#select_branch2').append($('<option>', {
                            value: data[i].id,
                            text: data[i].name
                        }));
                    }
                    $("#select_branch").selectpicker("refresh");
                    $("#select_branch2").selectpicker("refresh");

                },
                error: function (jqXHR, textStatus, errorThrown) {

                },
                beforeSend: function (xhr) {

                }
            });

        },
        addExpense: function () {

            var e = {};
            var user = $.session.get("Logged_User");
            alert(user);
            if (user === "undefined") {
                window.location.replace("/");
            } else {
                if ($('#txt_new_expense_date').val().length < 2) {
                    noty({text: 'Date Required! ', layout: 'topRight', type: 'error'});
                } else if ($('#txt_new_expense_time').val().length < 2) {
                    noty({text: 'Time Required! ', layout: 'topRight', type: 'error'});
                } else if ($('#txt_expense_reason').val().length < 2) {
                    noty({text: 'Expense description Required! ', layout: 'topRight', type: 'error'});
                } else if ($('#txt_new_expense').val().length < 2) {
                    noty({text: 'Amount Required! ', layout: 'topRight', type: 'error'});
                } else {
                    e["id"] = "";
                    e["date"] = $("#txt_new_expense_date").val();
                    e["time"] = $("#txt_new_expense_time").val();
                    e["reason"] = $("#txt_expense_reason").val();
                    e["amount"] = $("#txt_new_expense").val();
                    e["user"] = user;

                    var d = JSON.stringify(e);

                    $.ajax({
                        url: '/expenses/add/new/expense',
                        dataType: 'json',
                        contentType: "application/json",
                        type: 'POST',
                        data: d,
                        success: function (data, textStatus, jqXHR) {
                            if (data) {
                                $("#txt_new_expense_date").val("");
                                $("#txt_new_expense_time").val("");
                                $("#txt_expense_reason").val("");
                                $("#txt_new_expense").val("");
                                noty({text: 'Expense Added!', layout: 'topRight', type: 'success'});
                            } else {
                                noty({text: 'Internal Server Error! ', layout: 'topRight', type: 'error'});
                            }

                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            noty({text: 'There was an error ' + errorThrown, layout: 'topRight', type: 'error'});


                        },
                        beforeSend: function (xhr) {
                            noty({text: 'Please wait..', layout: 'topRight', type: 'information'});
                        }
                    });
                }

            }
        },
        allIncomeDates: function () {
            $.ajax({
                url: "/expenses/all/income/dates/list",
                dataType: 'json',
                contentType: "application/json",
                type: 'GET',
                success: function (data, textStatus, jqXHR) {
                    $('#select_date')
                        .find('option')
                        .remove()
                        .end()
                        .append('<option>Select Date</option>')
                        .val('0');


                    for (var i = 0; i < data.length; i++) {
                        $('#select_date').append($('<option>', {
                            value: data[i].income_date,
                            text: data[i].income_date
                        }));

                    }
                    $("#select_date").selectpicker("refresh");


                },
                error: function (jqXHR, textStatus, errorThrown) {

                },
                beforeSend: function (xhr) {

                }
            });


        },
        allIncomeByBranchAndDate: function () {
            $('#tbl_income tbody tr td').remove();
            var branch = $("#select_branch").val();
            var date = $("#select_date").val();
            $.ajax({
                url: "/expenses/all/income/by/date/and/branch/list",
                dataType: 'json',
                contentType: "application/json",
                type: 'GET',
                data: {"branch": branch, "date": date},
                success: function (data, textStatus, jqXHR) {
                    if (data.length < 1) {
                        $('#tbl_income').append('<tr>\n\
                               <td colspan=9><p align="center" style="color: red">No Records found\n\
                               </p></td>\n\
                               </tr>');
                    } else {
                        for (var i = 0; i < data.length; i++) {
                            $('#tbl_income').append('<tr>\n\
                                    <td style="font-size: x-small;font-weight: bold">' + (i + 1) + '</td>\n\
                                    <td style="font-size: x-small;font-weight: bold">' + data[i].income_date + '</td>\n\
                                    <td style="font-size: x-small;font-weight: bold">' + data[i].amount + '</td>\n\
                                    <td style="font-size: x-small;font-weight: bold">' + data[i].staffMember + '</td>\n\
                                    <td style="font-size: x-small;font-weight: bold">' + data[i].student + '</td>\n\
                                    </tr>');

                        }
                    }

                },
                error: function (jqXHR, textStatus, errorThrown) {

                },
                beforeSend: function (xhr) {

                }
            });


        },
        allExpensesByBranchAndDate: function () {
            $('#tbl_expenses tbody tr td').remove();
            var branch = $("#select_branch2").val();
            var date = $("#select_date2").val();
            $.ajax({
                url: "/expenses/all/expenses/by/date/and/branch/list",
                dataType: 'json',
                contentType: "application/json",
                type: 'GET',
                data: {"branch": branch, "date": date},
                success: function (data, textStatus, jqXHR) {
                    if (data.length < 1) {
                        $('#tbl_expenses').append('<tr>\n\
                               <td colspan=9><p align="center" style="color: red">No Records found\n\
                               </p></td>\n\
                               </tr>');
                    } else {
                        for (var i = 0; i < data.length; i++) {
                            $('#tbl_expenses').append('<tr>\n\
                                    <td style="font-size: x-small;font-weight: bold">' + (i + 1) + '</td>\n\
                                    <td style="font-size: x-small;font-weight: bold">' + data[i].date + '</td>\n\
                                    <td style="font-size: x-small;font-weight: bold">' + data[i].time + '</td>\n\
                                    <td style="font-size: x-small;font-weight: bold">' + data[i].amount + '</td>\n\
                                    <td style="font-size: x-small;font-weight: bold">' + data[i].reason + '</td>\n\
                                    <td style="font-size: x-small;font-weight: bold">' + data[i].user + '</td>\n\
                                    </tr>');

                        }
                    }

                },
                error: function (jqXHR, textStatus, errorThrown) {

                },
                beforeSend: function (xhr) {

                }
            });


        },
        allExpenseDates: function () {
            $.ajax({
                url: "/expenses/all/expense/dates/list",
                dataType: 'json',
                contentType: "application/json",
                type: 'GET',
                success: function (data, textStatus, jqXHR) {
                    $('#select_date2')
                        .find('option')
                        .remove()
                        .end()
                        .append('<option>Select Date</option>')
                        .val('0');


                    for (var i = 0; i < data.length; i++) {
                        $('#select_date2').append($('<option>', {
                            value: data[i].date,
                            text: data[i].date
                        }));

                    }
                    $("#select_date2").selectpicker("refresh");


                },
                error: function (jqXHR, textStatus, errorThrown) {

                },
                beforeSend: function (xhr) {

                }
            });


        },
        startTime: function () {
            var today = new Date();
            var h = today.getHours();
            var m = today.getMinutes();
            var s = today.getSeconds();


            var yy = today.getFullYear();
            var mm = today.getMonth();
            var dd = today.getDate();


            m = checkTime(m);
            s = checkTime(s);
            $("#txt_new_expense_time").val(h + ":" + m + ":" + s)
            $("#txt_new_expense_date").val(yy + " - " + mm + " - " + dd);
            var t = setTimeout(income.startTime, 500);
        }

    }

;