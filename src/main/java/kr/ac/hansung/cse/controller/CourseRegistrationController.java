package kr.ac.hansung.cse.controller;

import kr.ac.hansung.cse.model.CourseRegistration;
import kr.ac.hansung.cse.service.CourseRegistrationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import javax.validation.Valid;
import java.util.List;

@Controller
public class CourseRegistrationController {

    @Autowired
    private CourseRegistrationService courseRegistrationService;

    @GetMapping("/courseregistrations")
    public String showCourseRegistration(Model model) {
        List<CourseRegistration> courseRegistrations = courseRegistrationService.getAllCourseRegistrations();
        model.addAttribute("id_courseregistrations", courseRegistrations);

        return "courseregistrations";
    }

    @GetMapping("/createcourseregistration")
    public String createCourseRegistration(Model model) {

        model.addAttribute("courseregistration", new CourseRegistration());

        return "createcourseregistration";
    }

    @PostMapping("/docourseregistration")
    public String doCourseRegistration(@ModelAttribute("courseregistration") @Valid CourseRegistration courseRegistration, BindingResult result, Model model) {
        if (result.hasErrors()) {
            System.out.println("== Form data does not validated ==");

            List<ObjectError> errors = result.getAllErrors();

            for (ObjectError error : errors) {
                System.out.println(error.getDefaultMessage());
            }
            if (result.hasErrors()) {
                model.addAttribute("courseregistration", courseRegistration);
                return "createcourseregistration";
            }

            return "createcourseregistration";
        }

        courseRegistrationService.insert(courseRegistration);

        return "courseregistrationcreated";
    }
}
