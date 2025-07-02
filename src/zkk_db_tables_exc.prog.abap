*&---------------------------------------------------------------------*
*& Report  ZKK_DB_TABLES_EXC
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT ZKK_DB_TABLES_EXC no standard page heading.

types: begin of student,
    mandt type mandt,
    id type ZDE_STD_ID,
    name type ZDE_STD_NAME,
    age type ZDE_STD_AGE,
    gender type ZDE_STD_GENDER,
       end of student.

data: wa_stu type zstudent,
      it_stu type table of student.

*wa_stu-MANDT = 800.
*WA_STU-ID = 100.
*wa_stu-name = 'Johnny'.
*wa_stu-age = 20.
*wa_stu-gender = 'M'.
*
*append wa_stu to it_stu.
*clear wa_stu.
*
*wa_stu-MANDT = 800.
*WA_STU-ID = 200.
*wa_stu-name = 'Change ME'.
*wa_stu-age = 30.
*wa_stu-gender = 'M'.
*
*append wa_stu to it_stu.
*clear wa_stu.
*
*modify zstudent from table it_stu.
*
*wa_stu-MANDT = 800.
*WA_STU-ID = 300.
*wa_stu-name = 'Test'.
*wa_stu-age = 40.
*
*insert into zstudent values wa_stu.
*clear wa_stu.
*
*update zstudent set gender = 'M' where name = 'Test'.

wa_stu-MANDT = 800.
WA_STU-student_ID = 700.
wa_stu-name = 'Hello'.
wa_stu-age = 100.

UPDATE zstudent FROM wa_stu. " Why does this not work?














.
