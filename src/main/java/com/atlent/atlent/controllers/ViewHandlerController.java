package com.atlent.atlent.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/")
public class ViewHandlerController {
    @Autowired
    private ShortMessageServiceController controller;

    @RequestMapping(value = {"/"}, method = RequestMethod.GET)
    public ModelAndView getLoginPage() {
        //controller.sendSMS();
        return new ModelAndView("index");
    }

    @RequestMapping(value = {"admin_dashboard"}, method = RequestMethod.GET)
    public ModelAndView getAdminDashboard() {
        return new ModelAndView("admin_dashboard");
    }

    @RequestMapping(value = {"all/student"}, method = RequestMethod.GET)
    public ModelAndView getAllStudent() {
        System.out.println("working");
        return new ModelAndView("allStudent");
    }

    @RequestMapping(value = {"new/student"}, method = RequestMethod.GET)
    public ModelAndView StudentRegistration() {
        System.out.println("working");
        return new ModelAndView("studentRegistration");
    }

    @RequestMapping(value = {"student/exam/schedule"}, method = RequestMethod.GET)
    public ModelAndView StudentPromotion() {
        System.out.println("working");
        return new ModelAndView("exam_schedule");
    }

    @RequestMapping(value = {"student/payments"}, method = RequestMethod.GET)
    public ModelAndView StudentAttendance() {
        System.out.println("working payment");
        return new ModelAndView("payment");
    }

    @RequestMapping(value = {"student/exam/results"}, method = RequestMethod.GET)
    public ModelAndView ParentRegistration() {
        System.out.println("working");
        return new ModelAndView("examResult");
    }

    @RequestMapping(value = {"tech/support"}, method = RequestMethod.GET)
    public ModelAndView AllParent() {
        System.out.println("working");
        return new ModelAndView("techSupport");
    }

    @RequestMapping(value = {"staff/members"}, method = RequestMethod.GET)
    public ModelAndView searchStudents() {
        System.out.println("working");
        return new ModelAndView("StaffMembers");
    }

    @RequestMapping(value = {"new/teacher/profile"}, method = RequestMethod.GET)
    public ModelAndView teachersRegistration() {
        System.out.println("working");
        return new ModelAndView("teachersRegistration");
    }

    @RequestMapping(value = {"page/not found"}, method = RequestMethod.GET)
    public ModelAndView teachersList() {
        System.out.println("working");
        return new ModelAndView("pages-error-404");
    }

}
