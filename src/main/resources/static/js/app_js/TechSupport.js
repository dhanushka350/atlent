function sentMail(e) {

    var subject = $("#txt_subject").val();
    var message = $("#txt_message").val();

    $.post("/Mail/request/mail/service",
        {
            subject: subject,
            message: message

        }, function (result) {
            if (result) {
                noty({text: "Sending Email..", layout: 'topRight', type: 'success'});
                noty({
                    text: "We got your email! \n We’re working on your request. Hang tight!",
                    layout: 'topRight',
                    type: 'information'
                });
                noty({
                    text: 'We’ll get back to you within 6 business hours (Monday-Friday 9am-6pm EST).',
                    layout: 'topRight',
                    type: 'information'
                });
            } else if (result === false) {
                noty({
                    text: "Message from atlent : \n Sorry I can't connect with developers at the moment.! \n do we have internet connection? \n if it not work please call them \n - 0711215863" + errorThrown,
                    layout: 'topRight',
                    type: 'error'
                });
            }

        });
    e.preventDefault();
}