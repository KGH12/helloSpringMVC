package kr.ac.hansung.cse.controller;

import kr.ac.hansung.cse.model.Course;
import kr.ac.hansung.cse.service.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class CourseController {

    @Autowired
    private CourseService courseService;

    @GetMapping("/courses")
    public String showCourses(Model model) {
        List<Course> courses = courseService.getAllCourses();
        model.addAttribute("id_courses", courses);

        return "courses";
    }

    @GetMapping("/coursedetail")
    public String showCourseDetail(Model model, @RequestParam("year") int 수강년도, @RequestParam("semester") int 학기) {
        List<Course> coursedetail = courseService.getCourse(수강년도, 학기);
        model.addAttribute("id_coursedetail", coursedetail);

        return "coursedetail";
    }
}
