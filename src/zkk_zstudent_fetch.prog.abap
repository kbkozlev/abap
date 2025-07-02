*&---------------------------------------------------------------------*
*& Report  ZKK_ZSTUDENT_FETCH
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT ZKK_ZSTUDENT_FETCH no standard page heading.

types: begin of student,
        mandt type mandt,
        stdid type zde_std_id,
        name type zde_std_name,
        age type zde_std_age,
        gen type zde_std_gender,
      end of student.

data: st_stu type student,
      gt_stu type table of student.

parameters: stuid type zde_std_id obligatory.

select * from zstudent into table gt_stu where STUDENT_ID = stuid.

loop at gt_stu into st_stu.
write: / | Student ID: { st_stu-stdid } |.
endloop.

.
