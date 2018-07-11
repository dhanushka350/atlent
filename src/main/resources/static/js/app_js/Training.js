// $("#txt_nic").keyup(function () {
//
//     Exam.getStudent();
//
// });
$("#btn_save_training").click(function (e) {

    Training.addNewTraining();

    e.preventDefault();
});
// $("#btn_save_exam_schedule").click(function (e) {
//
//     Exam.addNewExamSchedule();
//
//     e.preventDefault();
// });
// $("#btn_search").click(function (e) {
//
//     Exam.allSchedulesByNic();
//
//     e.preventDefault();
// });
// $('#select_exam').on('change', function () {
//     Exam.getExam();
// });


var Training = {

    addNewTraining: function () {

        var e = {};
        e["id"] = "";
        if ($('#txt_training_date').val().length < 2) {
            noty({text: 'please enter training date', layout: 'topRight', type: 'error'});
        } else if ($('#txt_training_time').val().length < 2) {
            noty({text: 'please enter time', layout: 'topRight', type: 'error'});
        } else {
            e["date"] = $('#txt_training_date').val();
            e["time"] = $('#txt_training_time').val();

            var d = JSON.stringify(e);

            $.ajax({
                url: '/training/request/new/training',
                dataType: 'json',
                contentType: "application/json",
                type: 'POST',
                data: d,
                success: function (data, textStatus, jqXHR) {
                    $('#txt_training_date').val("");
                    $('#txt_training_time').val("");
                    Training.addNewTraining();
                    noty({text: 'Training saved. Training date ' + data.date, layout: 'topRight', type: 'success'});
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
        }
    },
    // allExams: function () {
    //
    //     $.ajax({
    //         url: "/exam/all/exam/list",
    //         dataType: 'json',
    //         contentType: "application/json",
    //         type: 'GET',
    //         success: function (data, textStatus, jqXHR) {
    //
    //             $('#select_exam')
    //                 .find('option')
    //                 .remove()
    //                 .end()
    //                 .append('<option>Select Exam Date</option>')
    //                 .val('0');
    //
    //             for (var i = 0; i < data.length; i++) {
    //                 $('#select_exam').append($('<option>', {
    //                     value: data[i].id,
    //                     text: data[i].date
    //                 }));
    //             }
    //             $("#select_exam").selectpicker("refresh");
    //         },
    //         error: function (jqXHR, textStatus, errorThrown) {
    //             console.log(jqXHR + "---" + textStatus + "---" + errorThrown);
    //         },
    //         beforeSend: function (xhr) {
    //
    //         }
    //     });
    // },
    // getExam: function () {
    //
    //     var id = $("#select_exam").val();
    //     var e = {};
    //     e["id"] = id;
    //     e["date"] = "";
    //     e["time"] = "";
    //     e["type"] = "";
    //
    //     var d = JSON.stringify(e);
    //     $.ajax({
    //         url: '/exam/get/exam',
    //         dataType: 'json',
    //         contentType: "application/json",
    //         type: 'POST',
    //         data: d,
    //         success: function (data, textStatus, jqXHR) {
    //             noty({text: 'Exam details loaded ', layout: 'topRight', type: 'success'});
    //             $("#txt_ex_date").val(data.date);
    //             $("#txt_time").val(data.time);
    //             $('#exam_states').selectpicker('val', data.type);
    //         },
    //         error: function (jqXHR, textStatus, errorThrown) {
    //             noty({text: 'There was an error ' + errorThrown, layout: 'topRight', type: 'error'});
    //             console.log("error" + jqXHR + " - " + errorThrown);
    //             console.log(textStatus);
    //             console.log("R: " + jqXHR.status);
    //             console.log("R: " + jqXHR.responseText);
    //
    //         },
    //         beforeSend: function (xhr) {
    //             //noty({text: 'Requesting data..', layout: 'topRight', type: 'information'});
    //         }
    //     });
    //
    // },
    // getStudent: function () {
    //     var nic = $("#txt_nic").val();
    //
    //     $.ajax({
    //         url: '/Student/check/before/registration',
    //         dataType: 'json',
    //         contentType: "application/json",
    //         type: 'POST',
    //         data: nic,
    //         success: function (data, textStatus, jqXHR) {
    //             if (data.s_name === null) {
    //                 if ($("#txt_nic").val().length > 9) {
    //                     noty({
    //                         text: "we can not find student.. \n make sure that student already registered.",
    //                         layout: 'topRight',
    //                         type: 'information'
    //                     });
    //                 }
    //             } else {
    //                 $('#txt_name').val(data.s_name);
    //             }
    //         },
    //         error: function (jqXHR, textStatus, errorThrown) {
    //             if (textStatus === "parsererror") {
    //             } else {
    //                 noty({text: "An error occurred! \n " + textStatus + ".", layout: 'topRight', type: 'error'});
    //             }
    //
    //
    //         },
    //         beforeSend: function (xhr) {
    //             // noty({text: 'Requesting data..', layout: 'topRight', type: 'information'});
    //         }
    //     });
    // },
    // addNewExamSchedule: function () {
    //
    //     var e = {};
    //
    //     if ($('#txt_nic').val().length < 10) {
    //         noty({text: 'please enter valid nic number', layout: 'topRight', type: 'error'});
    //     } else {
    //         e["studentNIC"] = $("#txt_nic").val();
    //         e["examID"] = $("#select_exam").val();
    //         e["state"] = $("#select_states").val();
    //
    //         var d = JSON.stringify(e);
    //
    //         $.ajax({
    //             url: '/exam/save/new/schedule',
    //             dataType: 'json',
    //             contentType: "application/json",
    //             type: 'POST',
    //             data: d,
    //             success: function (data, textStatus, jqXHR) {
    //                 // $('#txt_new_exam').val("");
    //                 // $('#txt_new_time').val("");
    //                 Exam.allSchedules();
    //                 noty({text: 'Schedule added for ' + $("#txt_name").val(), layout: 'topRight', type: 'success'});
    //             },
    //             error: function (jqXHR, textStatus, errorThrown) {
    //                 noty({text: 'There was an error ' + errorThrown, layout: 'topRight', type: 'error'});
    //                 // console.log("error" + jqXHR + " - " + errorThrown);
    //                 // console.log(textStatus);
    //                 // console.log("R: " + jqXHR.status);
    //                 // console.log("R: " + jqXHR.responseText);
    //
    //             },
    //             beforeSend: function (xhr) {
    //                 // noty({text: 'Please wait..', layout: 'topRight', type: 'information'});
    //             }
    //         });
    //     }
    // },
    // allSchedules: function () {
    //     $('#tbl_schedule tbody tr td').remove();
    //
    //     $.ajax({
    //         url: "/exam/all/exam/schedule/list",
    //         dataType: 'json',
    //         contentType: "application/json",
    //         type: 'GET',
    //         success: function (data, textStatus, jqXHR) {
    //             if (data.length < 1) {
    //                 $('#tbl_schedule').append('<tr>\n\
    //                            <td colspan=9><p align="center">No Records found\n\
    //                            </p></td>\n\
    //                            </tr>');
    //             } else {
    //                 for (var i = 0; i < data.length; i++) {
    //                     $('#tbl_schedule').append('<tr>\n\
    //                                 <td style="font-size: x-small;font-weight: bold">' + (i + 1) + '</td>\n\
    //                                 <td style="font-size: x-small;font-weight: bold">' + data[i].student_name + '</td>\n\
    //                                 <td style="font-size: x-small;font-weight: bold">' + data[i].nic + '</td>\n\
    //                                 <td style="font-size: x-small;font-weight: bold">' + data[i].exam_date + '</td>\n\
    //                                 <td style="font-size: x-small;font-weight: bold">' + data[i].exam_type + '</td>\n\
    //                                 <td style="font-size: x-small;font-weight: bold">' + data[i].result + '</td>\n\
    //                                 </tr>');
    //
    //                 }
    //             }
    //
    //         },
    //         error: function (jqXHR, textStatus, errorThrown) {
    //             console.log(jqXHR + "---" + textStatus + "---" + errorThrown);
    //         },
    //         beforeSend: function (xhr) {
    //
    //         }
    //     });
    //
    // },
    // allSchedulesByNic: function () {
    //     $('#tbl_schedule tbody tr td').remove();
    //     var nic = $("#txt_search_nic").val();
    //     $.ajax({
    //         url: "/exam/all/exam/schedule/list/by/student_nic",
    //         dataType: 'json',
    //         contentType: "application/json",
    //         type: 'POST',
    //         data: nic,
    //         success: function (data, textStatus, jqXHR) {
    //             if (data.length < 1) {
    //                 $('#tbl_schedule').append('<tr>\n\
    //                            <td colspan=9><p align="center">No Records found\n\
    //                            </p></td>\n\
    //                            </tr>');
    //             } else {
    //                 for (var i = 0; i < data.length; i++) {
    //                     $('#tbl_schedule').append('<tr>\n\
    //                                 <td style="font-size: x-small;font-weight: bold">' + (i + 1) + '</td>\n\
    //                                 <td style="font-size: x-small;font-weight: bold">' + data[i].student_name + '</td>\n\
    //                                 <td style="font-size: x-small;font-weight: bold">' + data[i].nic + '</td>\n\
    //                                 <td style="font-size: x-small;font-weight: bold">' + data[i].exam_date + '</td>\n\
    //                                 <td style="font-size: x-small;font-weight: bold">' + data[i].exam_type + '</td>\n\
    //                                 <td style="font-size: x-small;font-weight: bold">' + data[i].result + '</td>\n\
    //                                 </tr>');
    //
    //                 }
    //             }
    //
    //         },
    //         error: function (jqXHR, textStatus, errorThrown) {
    //             console.log(jqXHR + "---" + textStatus + "---" + errorThrown);
    //         },
    //         beforeSend: function (xhr) {
    //
    //         }
    //     });
    //
    // }
};