$("#btn_staff").click(function (e) {
    alert("gh");
    Staff.addNewStaff();
    e.preventDefault();
});

$("#txt_nic").keyup(function () {

    Staff.searchStaff();

});

var Staff = {

    searchStaff: function () {
        var nic = $("#txt_nic").val();
        $.ajax({
            url: '/Staff/save/user/details',
            dataType: 'json',
            contentType: "application/json",
            type: 'POST',
            data: nic,
            success: function (data, textStatus, jqXHR) {
                $('#txt_nic').val(data.nic);
                $('#select_branch').selectpicker('val', data.branch).selectpicker('render');
                $('#txt_name').val(data.name);
                $('#password').val(data.pass);
                $('#txt_mobile').val(data.mobile);
                $('#txt_address').val(data.address);

            },
            error: function (jqXHR, textStatus, errorThrown) {


            },
            beforeSend: function (xhr) {
                // noty({text: 'Requesting data..', layout: 'topRight', type: 'information'});
            }
        });
    },

    addNewStaff: function () {
        var e = {};
        e["nic"] = $('#txt_nic').val();
        e["branch"] = $('#select_branch').val();
        e["name"] = $('#txt_name').val();
        e["pass"] = $('#password').val();
        e["mobile"] = $('#txt_mobile').val();
        e["address"] = $('#txt_address').val();

        var studentData = JSON.stringify(e);
        $.ajax({
            url: '/Staff/save/user/details',
            dataType: 'json',
            contentType: "application/json",
            type: 'POST',
            data: studentData,
            success: function (data, textStatus, jqXHR) {
                $('#nic').val("");
                $('#select_branch').val("");
                $('#name').val("");
                $('#password').val("");
                $('#mobile').val("");
                $('#address').val("");
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

                for (var i = 0; i < data.length; i++) {
                    $('#select_branch').append($('<option>', {
                        value: data[i].id,
                        text: data[i].name
                    }));
                }
                $("#select_branch").selectpicker("refresh");

            },
            error: function (jqXHR, textStatus, errorThrown) {

            },
            beforeSend: function (xhr) {

            }
        });

    },

    getAllMembers: function () {

        $('#tbl_members tbody tr td').remove();

        $.ajax({
            url: "/Staff/all/members/list",
            dataType: 'json',
            contentType: "application/json",
            type: 'GET',
            success: function (data, textStatus, jqXHR) {

                if (data[0].nic === null) {
                    $('#tbl_members').append('<tr>\n\
                               <td colspan=9><p align="center">Members not found in database\n\
                               </p></td>\n\
                               </tr>');
                } else {
                    for (var i = 0; i < data.length; i++) {
                        $('#tbl_members').append('<tr>\n\
                                    <td style="font-size: x-small;font-weight: bold">' + (i + 1) + '</td>\n\
                                    <td style="font-size: x-small;font-weight: bold">' + data[i].name + '</td>\n\
                                    <td style="font-size: x-small;font-weight: bold">' + data[i].nic + '</td>\n\
                                    <td style="font-size: x-small;font-weight: bold">' + data[i].branch + '</td>\n\
                                    <td style="font-size: x-small;font-weight: bold">' + data[i].mobile + '</td>\n\
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
}


