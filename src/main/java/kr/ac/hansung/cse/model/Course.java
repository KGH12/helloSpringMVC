package kr.ac.hansung.cse.model;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor
public class Course {
    private int 수강년도;
    private int 학기;
    private String 교과목명;
    private String 교과구분;
    private String 담당교수;
    private int 학점;
}
