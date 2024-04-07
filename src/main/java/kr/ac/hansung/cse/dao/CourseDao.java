package kr.ac.hansung.cse.dao;

import kr.ac.hansung.cse.model.Course;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
public class CourseDao {

    private JdbcTemplate jdbcTemplate;  // psa(portable service abstraction, sql(x) api

    @Autowired
    public void setDataSource(DataSource dataSource) {
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    public int getRowCount() {
        String sqlStatement= "select count(*) from courses";
        return jdbcTemplate.queryForObject(sqlStatement, Integer.class);

    }

    //query and return a single object
    public List<Course> getCourse(int 수강년도, int 학기) {

        String sqlStatement= "select * from courses where 수강년도=? and 학기=?";
        return jdbcTemplate.query(sqlStatement, new Object[] {수강년도, 학기},
                (rs, rowNum) -> {
                    Course course = new Course();
                    course.set수강년도(rs.getInt("수강년도"));
                    course.set학기(rs.getInt("학기"));
                    course.set교과목명(rs.getString("교과목명"));
                    course.set교과구분(rs.getString("교과구분"));
                    course.set담당교수(rs.getString("담당교수"));
                    course.set학점(rs.getInt("학점"));
                    return course;
                });
    }

    //query and return multiple objects
    // cRud method
    public List<Course> getCourses() {

            String sqlStatement= "(select 수강년도, 학기, sum(학점) as 취득학점 from courses group by 수강년도, 학기) UNION ALL (SELECT '', '', SUM(학점) AS 취득학점 FROM courses)";
        return jdbcTemplate.query(sqlStatement, new RowMapper<Course>() {

            @Override
            public Course mapRow(ResultSet rs, int rowNum) throws SQLException {

                Course course= new Course();

                course.set수강년도(rs.getInt("수강년도"));
                course.set학기(rs.getInt("학기"));
                course.set학점(rs.getInt("취득학점"));

                return course;
            }
        });
    }

}
