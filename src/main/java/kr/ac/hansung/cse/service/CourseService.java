package kr.ac.hansung.cse.service;

import kr.ac.hansung.cse.dao.CourseDao;
import kr.ac.hansung.cse.model.Course;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CourseService {
    //service -> dao
    @Autowired
    private CourseDao courseDao;

    public List<Course> getAllCourses() {
        return courseDao.getCourses();
    }

    public List<Course> getCourse(int 수강년도, int 학기) {
        return courseDao.getCourse(수강년도, 학기);
    }

}
