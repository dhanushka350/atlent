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
        
        return new ModelAndView("index");
    }
    @RequestMapping(value = {"/logout"}, method = RequestMethod.GET)
    public ModelAndView logout() {

        return new ModelAndView("index");
    }

    @RequestMapping(value = {"dashboard"}, method = RequestMethod.GET)
    public ModelAndView getAdminDashboard() {

        return new ModelAndView("dashboard");
    }

    @RequestMapping(value = {"all/student"}, method = RequestMethod.GET)
    public ModelAndView getAllStudent() {

        return new ModelAndView("allStudent");
    }

    @RequestMapping(value = {"new/student"}, method = RequestMethod.GET)
    public ModelAndView StudentRegistration() {

        return new ModelAndView("studentRegistration");
    }

    @RequestMapping(value = {"student/exam/schedule"}, method = RequestMethod.GET)
    public ModelAndView StudentPromotion() {

        return new ModelAndView("exam_schedule");
    }

    @RequestMapping(value = {"student/payments"}, method = RequestMethod.GET)
    public ModelAndView StudentAttendance() {

        return new ModelAndView("payment");
    }

    @RequestMapping(value = {"student/exam/results"}, method = RequestMethod.GET)
    public ModelAndView ParentRegistration() {

        return new ModelAndView("examResult");
    }

    @RequestMapping(value = {"tech/support"}, method = RequestMethod.GET)
    public ModelAndView AllParent() {

        return new ModelAndView("techSupport");
    }

    @RequestMapping(value = {"staff/members"}, method = RequestMethod.GET)
    public ModelAndView searchStudents() {

        return new ModelAndView("StaffMembers");
    }

    @RequestMapping(value = {"income/expenses"}, method = RequestMethod.GET)
    public ModelAndView teachersRegistration() {

        return new ModelAndView("Income");
    }

    @RequestMapping(value = {"page/not found"}, method = RequestMethod.GET)
    public ModelAndView teachersList() {

        return new ModelAndView("pages-error-404");
    }

    @RequestMapping(value = {"training/schedule"}, method = RequestMethod.GET)
    public ModelAndView training() {

        return new ModelAndView("training_schedule");
    }
}
