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
        alert("lkjhngbg");

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

    }
}


