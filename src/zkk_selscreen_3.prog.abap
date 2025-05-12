*&---------------------------------------------------------------------*
*& Report zkk_selscreen_3
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zkk_selscreen_3 NO STANDARD PAGE HEADING.

TYPES: BEGIN OF ty_student,
         name   TYPE c LENGTH 12,
         age    TYPE i,
         gender TYPE c,
       END OF ty_student.

DATA: gs_student TYPE ty_student,
      gt_student TYPE TABLE OF ty_student.

gs_student-name = 'Kal'.
gs_student-age = '29'.
gs_student-gender = 'M'.
APPEND gs_student TO gt_student.
CLEAR gs_student.

gs_student-name = 'Viki'.
gs_student-age = '31'.
gs_student-gender = 'F'.
APPEND gs_student TO gt_student.
CLEAR gs_student.

gs_student-name = 'Milo'.
gs_student-age = '15'.
gs_student-gender = 'M'.
APPEND gs_student TO gt_student.
CLEAR gs_student.

gs_student-name = 'Val'.
gs_student-age = '18'.
gs_student-gender = 'F'.
APPEND gs_student TO gt_student.
CLEAR gs_student.

gs_student-name = 'Freya'.
gs_student-age = '17'.
gs_student-gender = 'F'.
APPEND gs_student TO gt_student.
CLEAR gs_student.

gs_student-name = 'Goro'.
gs_student-age = '20'.
gs_student-gender = 'T'.
APPEND gs_student TO gt_student.
CLEAR gs_student.

SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-001.
PARAMETERS: p_m RADIOBUTTON GROUP sex,
            p_f RADIOBUTTON GROUP sex,
            p_t RADIOBUTTON GROUP sex.
SELECTION-SCREEN END OF BLOCK b1.

CASE abap_true.

  WHEN p_m.

    CLEAR gs_student.
    LOOP AT gt_student INTO gs_student WHERE gender = 'M'.
      WRITE: / gs_student-name, gs_student-age, gs_student-gender.
    ENDLOOP.

  WHEN p_f.

    CLEAR gs_student.
    LOOP AT gt_student INTO gs_student WHERE gender = 'F'.
      WRITE: / gs_student-name, gs_student-age, gs_student-gender.
    ENDLOOP.

  WHEN p_t.

    CLEAR gs_student.
    LOOP AT gt_student INTO gs_student WHERE gender = 'T'.
      WRITE: / gs_student-name, gs_student-age, gs_student-gender.
    ENDLOOP.

ENDCASE.
