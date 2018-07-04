package com.atlent.atlent.controllers;

import com.atlent.atlent.MailingSystem.AuroraMailSystem;
import com.twilio.sdk.TwilioRestClient;
import com.twilio.sdk.TwilioRestException;
import com.twilio.sdk.resource.factory.MessageFactory;
import com.twilio.sdk.resource.instance.Message;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@RestController
public class ShortMessageServiceController {
    @Autowired
    private AuroraMailSystem mailSystem;
    // Find your Account Sid and Token at twilio.com/user/account
    public static final String ACCOUNT_SID = "AC32e7a48847d2a2dea9e9a2d86964ce88";
    public static final String AUTH_TOKEN = "280eb5b45433eab75165e94f98431ed8";
    public static final String TWILIO_NUMBER = "+14159429487";


    public void sendSMS() {
        try {
            TwilioRestClient client = new TwilioRestClient(ACCOUNT_SID, AUTH_TOKEN);

            // Build a filter for the MessageList
            List<NameValuePair> params = new ArrayList<NameValuePair>();
            params.add(new BasicNameValuePair("Body", "hiii.. welcome to the future suduu.. duraaa gamanak ynna puluwan wenna kiyala prarthana karahalla.. aaah happy poya day.. hikz"));
            params.add(new BasicNameValuePair("To", "+94 770495195")); //Add real number here
            params.add(new BasicNameValuePair("From", TWILIO_NUMBER));

            MessageFactory messageFactory = client.getAccount().getMessageFactory();
            Message message = messageFactory.create(params);
            System.out.println(message.getSid());
        } catch (TwilioRestException e) {
            System.out.println(e.getErrorMessage());
            mailSystem.reportException(e);
        }
    }
}
