*&---------------------------------------------------------------------*
*& Report ZKB_SELECT_OPTIONS
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zkb_select_options NO STANDARD PAGE HEADING.

TYPES: BEGIN OF gty_student,
         roll   TYPE n LENGTH 3,
         name   TYPE c LENGTH 40,
         age    TYPE n LENGTH 3,
         gender TYPE c,
       END OF gty_student.

DATA: gs_student TYPE gty_student,
      gt_student TYPE TABLE OF gty_student.

SELECT-OPTIONS: s_roll FOR gs_student-roll.
PARAMETERS: p_roll(3) TYPE n.


gs_student-roll = 100.
gs_student-name = 'Ajay'.
gs_student-age = 15.
gs_student-gender = 'M'.
APPEND gs_student TO gt_student.
CLEAR gs_student.

gs_student-roll = 200.
gs_student-name = 'Anil'.
gs_student-age = 16.
gs_student-gender = 'M'.
APPEND gs_student TO gt_student.
CLEAR gs_student.

gs_student-roll = 300.
gs_student-name = 'Bharath'.
gs_student-age = 14.
gs_student-gender = 'M'.
APPEND gs_student TO gt_student.
CLEAR gs_student.

gs_student-roll = 400.
gs_student-name = 'Chetana'.
gs_student-age = 15.
gs_student-gender = 'F'.
APPEND gs_student TO gt_student.
CLEAR gs_student.

gs_student-roll = 500.
gs_student-name = 'Diana'.
gs_student-age = 16.
gs_student-gender = 'F'.
APPEND gs_student TO gt_student.
CLEAR gs_student.

gs_student-roll = 600.
gs_student-name = 'Ganga'.
gs_student-age = 13.
gs_student-gender = 'F'.
APPEND gs_student TO gt_student.
CLEAR gs_student.

gs_student-roll = 700.
gs_student-name = 'Harsha'.
gs_student-age = 14.
gs_student-gender = 'M'.
APPEND gs_student TO gt_student.
CLEAR gs_student.

LOOP AT gt_student INTO gs_student WHERE roll IN s_roll.
  WRITE: / |Roll Num: { gs_student-roll }|,
          |Name: { gs_student-name }|,
          |Age: { gs_student-age }|,
          |Gender: { gs_student-gender }|.
ENDLOOP.
