$("#btn_save_expense").click(function (e) {

    income.addExpense();

    e.preventDefault();
});
var income = {
        allBranches: function () {
            $('#txt_student tbody tr td').remove();

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
    }

;