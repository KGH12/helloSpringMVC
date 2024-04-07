package kr.ac.hansung.cse.model;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

import javax.validation.constraints.Min;
import javax.validation.constraints.Size;
import javax.validation.constraints.NotEmpty;

@Getter
@Setter
@ToString
@NoArgsConstructor
public class CourseRegistration {

    @Min(value = 1, message = "Please input a valid year.")
    private int year;

    @Min(value = 1, message = "Please input a valid semester.")
    private int semester;

    @NotEmpty(message="Please input coursename.")
    @Size(min=2, max=100, message = "coursename must be between 2 and 100 chars.")
    private String coursename;

    @NotEmpty(message="Please input coursetype.")
    @Size(min=2, max=50, message = "coursetype must be between 2 and 50 chars.")
    private String coursetype;

    @NotEmpty(message="Please input professor.")
    @Size(min=2, max=50, message = "professor must be between 2 and 50 chars.")
    private String professor;

    @Min(value = 1, message = "Please input a valid credit.")
    private int credit;
}
