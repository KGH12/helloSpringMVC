package kr.ac.hansung.cse.service;

import kr.ac.hansung.cse.dao.CourseRegistrationDao;
import kr.ac.hansung.cse.model.CourseRegistration;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CourseRegistrationService {
    //service -> dao
    @Autowired
    private CourseRegistrationDao courseRegistrationDao;

    public List<CourseRegistration> getAllCourseRegistrations() {
        return courseRegistrationDao.getCourseRegistrations();
    }

    public void insert(CourseRegistration courseRegistration) {
        courseRegistrationDao.insert(courseRegistration);
    }

}
