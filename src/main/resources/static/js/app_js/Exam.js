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


$("#btn_save_exam").click(function (e) {

    Exam.addNewExam();

    e.preventDefault();
});

$('#select_exam').on('change', function () {
    Exam.getExam();
});


var Exam = {

    addNewExam: function () {

        var e = {};
        e["id"] = "";
        e["date"] = $('#txt_new_exam').val();
        e["states"] = $('#txt_new_time').val();


        var d = JSON.stringify(e);

        $.ajax({
            url: '/exam/request/new/exam',
            dataType: 'json',
            contentType: "application/json",
            type: 'POST',
            data: d,
            success: function (data, textStatus, jqXHR) {
                $('#txt_new_exam').val("");
                $('#txt_new_time').val("");
                Exam.allExams();
                noty({text: 'Exam saved. Exam date ' + data.date, layout: 'topRight', type: 'success'});
            },
            error: function (jqXHR, textStatus, errorThrown) {
                noty({text: 'There was an error ' + errorThrown, layout: 'topRight', type: 'error'});
                console.log("error" + jqXHR + " - " + errorThrown);
                console.log(textStatus);
                console.log("R: " + jqXHR.status);
                console.log("R: " + jqXHR.responseText);

            },
            beforeSend: function (xhr) {
                noty({text: 'Please wait..', layout: 'topRight', type: 'information'});
            }
        });

    },
    allExams: function () {

        $.ajax({
            url: "/exam/all/exam/list",
            dataType: 'json',
            contentType: "application/json",
            type: 'GET',
            success: function (data, textStatus, jqXHR) {

                $('#select_exam')
                    .find('option')
                    .remove()
                    .end()
                    .append('<option>Select Exam Date</option>')
                    .val('0');

                for (var i = 0; i < data.length; i++) {
                    $('#select_exam').append($('<option>', {
                        value: data[i].id,
                        text: data[i].date
                    }));
                }
                $("#select_exam").selectpicker("refresh");
            },
            error: function (jqXHR, textStatus, errorThrown) {
                console.log(jqXHR + "---" + textStatus + "---" + errorThrown);
            },
            beforeSend: function (xhr) {

            }
        });
    },
    getExam: function () {

        var id = $("#select_exam").val();
        var e = {};
        e["id"] = id;
        e["date"] = "";
        e["states"] = "";


        var d = JSON.stringify(e);
        $.ajax({
            url: '/exam/get/exam',
            dataType: 'json',
            contentType: "application/json",
            type: 'POST',
            data: d,
            success: function (data, textStatus, jqXHR) {
                noty({text: 'Exam details loaded ', layout: 'topRight', type: 'success'});
                alert(data.date);
                $("#txt_ex_date").val(data.date);
                $("#txt_time").val(data.states);
                //Exam.allExams();
            },
            error: function (jqXHR, textStatus, errorThrown) {
                noty({text: 'There was an error ' + errorThrown, layout: 'topRight', type: 'error'});
                console.log("error" + jqXHR + " - " + errorThrown);
                console.log(textStatus);
                console.log("R: " + jqXHR.status);
                console.log("R: " + jqXHR.responseText);

            },
            beforeSend: function (xhr) {
                noty({text: 'Requesting data..', layout: 'topRight', type: 'information'});
            }
        });

    }

}