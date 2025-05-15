*&---------------------------------------------------------------------*
*& Report zkk_internal_tables_1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zkk_internal_tables_1 NO STANDARD PAGE HEADING.

SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-001.
PARAMETERS: p_roll TYPE n LENGTH 3 OBLIGATORY.
SELECTION-SCREEN END OF BLOCK b1.

TYPES: BEGIN OF ty_student,
         roll   TYPE n LENGTH 3,
         name   TYPE c LENGTH 40,
         age    TYPE n LENGTH 3,
         gender TYPE c,
       END OF ty_student.

DATA: gs_student TYPE ty_student,
      it_student TYPE TABLE OF ty_student.

gs_student-roll = 100.
gs_student-name = 'Ajay'.
gs_student-age = 15.
gs_student-gender = 'M'.
APPEND gs_student TO it_student.
CLEAR gs_student.

gs_student-roll = 200.
gs_student-name = 'Anil'.
gs_student-age = 16.
gs_student-gender = 'M'.
APPEND gs_student TO it_student.
CLEAR gs_student.

gs_student-roll = 300.
gs_student-name = 'Bharath'.
gs_student-age = 14.
gs_student-gender = 'M'.
APPEND gs_student TO it_student.
CLEAR gs_student.

gs_student-roll = 400.
gs_student-name = 'Chetana'.
gs_student-age = 15.
gs_student-gender = 'F'.
APPEND gs_student TO it_student.
CLEAR gs_student.

gs_student-roll = 500.
gs_student-name = 'Diana'.
gs_student-age = 16.
gs_student-gender = 'F'.
APPEND gs_student TO it_student.
CLEAR gs_student.

gs_student-roll = 600.
gs_student-name = 'Ganga'.
gs_student-age = 13.
gs_student-gender = 'F'.
APPEND gs_student TO it_student.
CLEAR gs_student.

gs_student-roll = 700.
gs_student-name = 'Harsha'.
gs_student-age = 14.
gs_student-gender = 'M'.
APPEND gs_student TO it_student.
CLEAR gs_student.


* Selected Roll number
WRITE: 'Selected Roll Number' COLOR 3.

LOOP AT it_student INTO gs_student WHERE roll = p_roll.
  WRITE: / |Roll Num: { gs_student-roll }|,
         / |Name: { gs_student-name }|,
         / |Age: { gs_student-age }|,
         / |Gender: { gs_student-gender }|.

ENDLOOP.
CLEAR gs_student.

* First 5 students
SKIP 1.
WRITE: 'The first 5 student names are' COLOR 3.

LOOP AT it_student INTO gs_student.

  WRITE: / |{ sy-tabix }) { gs_student-name }|.

  IF sy-tabix >= 5.
    EXIT.
  ENDIF.

ENDLOOP.
CLEAR gs_student.

* Boys in the classroom
SKIP 1.
WRITE: 'Boys in the classrom' COLOR 3.
LOOP AT it_student INTO gs_student WHERE gender = 'M'.

  WRITE: / |Roll Num: { gs_student-roll }|,
         / |Name: { gs_student-name }|,
         / |Age: { gs_student-age }|,
         / |Gender: { gs_student-gender }|.

  SKIP 1.

ENDLOOP.
CLEAR gs_student.

* Girls in the classroom
WRITE: 'Girls in the classrom' COLOR 3.
LOOP AT it_student INTO gs_student WHERE gender = 'F'.

  WRITE: / |Roll Num: { gs_student-roll }|,
         / |Name: { gs_student-name }|,
         / |Age: { gs_student-age }|,
         / |Gender: { gs_student-gender }|.

  SKIP 1.

ENDLOOP.
CLEAR gs_student.

* Students who are eligible for Outdoor Tour
WRITE: 'Students who are eligible for Outdoor Tour' COLOR 3.
LOOP AT it_student INTO gs_student WHERE age >= 15.

  WRITE: / |Roll Num: { gs_student-roll }|,
         / |Name: { gs_student-name }|,
         / |Age: { gs_student-age }|,
         / |Gender: { gs_student-gender }|.

  SKIP 1.

ENDLOOP.
CLEAR gs_student.

* Students who are eligible for Outdoor Game
WRITE: 'Students who are eligible for Outdoor Game' COLOR 3.
LOOP AT it_student INTO gs_student WHERE age <= 15.

  WRITE: / |Roll Num: { gs_student-roll }|,
         / |Name: { gs_student-name }|,
         / |Age: { gs_student-age }|,
         / |Gender: { gs_student-gender }|.

  SKIP 1.

ENDLOOP.
CLEAR gs_student.


* Pairs based on Age and Gender
WRITE: 'Pairs based on Age and Gender' COLOR 3.
DATA: gv_age1     TYPE n LENGTH 3,
      gv_gen1     TYPE c,
      gv_age2     TYPE n LENGTH 3,
      gv_gen2     TYPE c,
      gs_student1 TYPE ty_student,
      it_l_stu    TYPE TABLE OF ty_student.

LOOP AT it_student INTO gs_student.
  gv_age1 = gs_student-age.
  gv_gen1 = gs_student-gender.


  LOOP AT it_student INTO gs_student1 FROM sy-tabix + 1.

    gv_age2 = gs_student1-age.
    gv_gen2 = gs_student1-gender.

    IF gv_age1 = gv_age2 AND gv_gen1 NE gv_gen2.

      WRITE: / |Name: { gs_student-name }|,
             / |Age: { gs_student-age }|,
             / |Gender: { gs_student-gender }|.

      SKIP 1.

      WRITE: / |Name: { gs_student1-name }|,
             / |Age: { gs_student1-age }|,
             / |Gender: { gs_student1-gender }|,
             / sy-uline.

      APPEND gs_student TO it_l_stu.
      APPEND gs_student1 TO it_l_stu.

      CLEAR gs_student.
      CLEAR gs_student1.

    ENDIF.

  ENDLOOP.

ENDLOOP.


* Singles
SKIP 1.
WRITE: 'Singles' COLOR 3.

LOOP AT it_student INTO gs_student.

  READ TABLE it_l_stu WITH KEY roll = gs_student-roll TRANSPORTING NO FIELDS.

  IF sy-subrc <> 0.

    WRITE: / |Roll Num: { gs_student-roll }|,
           / |Name: { gs_student-name }|,
           / |Age: { gs_student-age }|,
           / |Gender: { gs_student-gender }|.
    SKIP 1.

    CLEAR gs_student.

  ENDIF.

ENDLOOP.


* Switch data
WRITE: 'Switch Gender' COLOR 3.
LOOP AT it_student INTO gs_student.

  CASE gs_student-gender.
    WHEN 'M'.
      gs_student-gender = 'F'.
    WHEN 'F'.
      gs_student-gender = 'M'.
  ENDCASE.

  WRITE: / |Roll Num: { gs_student-roll }|,
         / |Name: { gs_student-name }|,
         / |Age: { gs_student-age }|,
         / |Gender: { gs_student-gender }|.

  SKIP 1.

  CLEAR gs_student.

ENDLOOP.












.
