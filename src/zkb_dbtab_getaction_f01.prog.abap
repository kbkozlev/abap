*&---------------------------------------------------------------------*
*&  Include           ZKB_DBTAB_GETACTION_F01
*&---------------------------------------------------------------------*



*&---------------------------------------------------------------------*
*&      Form  VALIDATE_SELSCREEN
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
*  -->  p1        text
*  <--  p2        text
*----------------------------------------------------------------------*
FORM validate_selscreen .
  IF p_rollno IS INITIAL.
    MESSAGE 'Roll Number is mandatory' TYPE 'E'.
  ENDIF.
ENDFORM.                    " VALIDATE_SELSCREEN


*&---------------------------------------------------------------------*
*&      Form  GET_DATA
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
*  -->  p1        text
*  <--  p2        text
*----------------------------------------------------------------------*
FORM get_data .

  SELECT st~roll_no first_name
    last_name subject score
    FROM zkb_student AS st
    LEFT OUTER JOIN zkb_score AS sc
    ON st~roll_no EQ sc~roll_no
    INTO TABLE gt_student.

ENDFORM.                    " GET_DATA


*&---------------------------------------------------------------------*
*&      Form  PROCESS_DATA
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
*  -->  p1        text
*  <--  p2        text
*----------------------------------------------------------------------*
FORM process_data .
  LOOP AT gt_student INTO gs_student.
    WRITE: / gs_student-roll_no, gs_student-first_name, gs_student-last_name,
             gs_student-subject, gs_student-score.
  ENDLOOP.

ENDFORM.                    " PROCESS_DATA
