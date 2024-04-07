package kr.ac.hansung.cse.dao;

import kr.ac.hansung.cse.model.CourseRegistration;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
public class CourseRegistrationDao {

    private JdbcTemplate jdbcTemplate;  // psa(portable service abstraction, sql(x) api

    @Autowired
    public void setDataSource(DataSource dataSource) {
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    public int getRowCount() {
        String sqlStatement= "select count(*) from courseregistration";
        return jdbcTemplate.queryForObject(sqlStatement, Integer.class);

    }

    //query and return multiple objects
    // cRud method
    public List<CourseRegistration> getCourseRegistrations() {

        String sqlStatement= "select * from courseregistration";
        return jdbcTemplate.query(sqlStatement, new RowMapper<CourseRegistration>() {

            @Override
            public CourseRegistration mapRow(ResultSet rs, int rowNum) throws SQLException {

                CourseRegistration courseRegistration= new CourseRegistration();

                courseRegistration.setYear(rs.getInt("수강년도"));
                courseRegistration.setSemester(rs.getInt("학기"));
                courseRegistration.setCoursename(rs.getString("교과목명"));
                courseRegistration.setCoursetype(rs.getString("교과구분"));
                courseRegistration.setProfessor(rs.getString("담당교수"));
                courseRegistration.setCredit(rs.getInt("학점"));

                return courseRegistration;
            }
        });
    }


    // Crud method
    public boolean insert(CourseRegistration courseRegistration) {

        int year= courseRegistration.getYear();
        int semester= courseRegistration.getSemester();
        String coursename = courseRegistration.getCoursename();
        String coursetype = courseRegistration.getCoursetype();
        String professor = courseRegistration.getProfessor();
        int credit = courseRegistration.getCredit();

        String sqlStatement= "insert into courseregistration (수강년도, 학기, 교과목명, 교과구분, 담당교수, 학점) values (?,?,?,?,?,?)";

        return (jdbcTemplate.update(sqlStatement, new Object[] {year, semester, coursename, coursetype, professor, credit}) == 1);
    }

}
