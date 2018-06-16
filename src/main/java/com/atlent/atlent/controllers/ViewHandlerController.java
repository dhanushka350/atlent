package com.atlent.atlent.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/")
public class ViewHandlerController {

    @RequestMapping(value = {"/"}, method = RequestMethod.GET)
    public ModelAndView getLoginPage() {
        return new ModelAndView("index");
    }

    @RequestMapping(value = {"admin_dashboard"},method = RequestMethod.GET)
    public ModelAndView getAdminDashboard(){
        return new ModelAndView("admin_dashboard");
    }

    @RequestMapping(value = {"all/student"},method = RequestMethod.GET)
    public ModelAndView getAllStudent(){
        System.out.println("working");
        return new ModelAndView("allStudent");
    }

    @RequestMapping(value = {"new/student"},method = RequestMethod.GET)
    public ModelAndView StudentRegistration(){
        System.out.println("working");
        return new ModelAndView("studentRegistration");
    }
    @RequestMapping(value = {"student/promotion"},method = RequestMethod.GET)
    public ModelAndView StudentPromotion(){
        System.out.println("working");
        return new ModelAndView("studentPromotion");
    }
    @RequestMapping(value = {"student/attendance"},method = RequestMethod.GET)
    public ModelAndView StudentAttendance(){
        System.out.println("working");
        return new ModelAndView("searchStudentAttendance");
    }
    @RequestMapping(value = {"parents/registration"},method = RequestMethod.GET)
    public ModelAndView ParentRegistration(){
        System.out.println("working");
        return new ModelAndView("parentsRegistration");
    }
    @RequestMapping(value = {"all/parents"},method = RequestMethod.GET)
    public ModelAndView AllParent(){
        System.out.println("working");
        return new ModelAndView("allParents");
    }
    @RequestMapping(value = {"search/students"},method = RequestMethod.GET)
    public ModelAndView searchStudents(){
        System.out.println("working");
        return new ModelAndView("searchStudents");
    }
    @RequestMapping(value = {"new/teacher/profile"},method = RequestMethod.GET)
    public ModelAndView teachersRegistration(){
        System.out.println("working");
        return new ModelAndView("teachersRegistration");
    }
    @RequestMapping(value = {"all/teachers/accounts"},method = RequestMethod.GET)
    public ModelAndView teachersList(){
        System.out.println("working");
        return new ModelAndView("allTeachers");
    }

}
