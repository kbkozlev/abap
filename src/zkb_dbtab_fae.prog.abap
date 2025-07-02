*&---------------------------------------------------------------------*
*& Report  ZKB_DBTAB_FAE
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT zkb_dbtab_fae.

TYPES: BEGIN OF gty_output,
        roll_no TYPE zkb_rollno_de,
        first_name TYPE zkb_name_de,
        last_name TYPE zkb_name_de,
        subject TYPE zkb_sub_de,
        score TYPE int2,
       END OF gty_output.

DATA: gt_output TYPE TABLE OF gty_output,
      gs_output TYPE gty_output.

DATA: gt_stu TYPE TABLE OF zkb_student,
      gs_stu TYPE zkb_student,
      gt_score TYPE TABLE OF zkb_score,
      gs_score TYPE zkb_score.

*PARAMETERS: p_rollno TYPE zkb_rollno_de OBLIGATORY.
SELECT-OPTIONS: s_rollno FOR gs_stu-roll_no OBLIGATORY.

*SELECT * FROM zkb_student INTO TABLE gt_stu WHERE roll_no EQ p_rollno.

SELECT * FROM zkb_student INTO TABLE gt_stu WHERE roll_no IN s_rollno.

IF gt_stu IS NOT INITIAL.
  SELECT *
    FROM zkb_score
    INTO TABLE gt_score
    FOR ALL ENTRIES IN gt_stu
    WHERE roll_no EQ gt_stu-roll_no.
ENDIF.



*SELECT * FROM zkb_score INTO TABLE gt_score WHERE roll_no EQ p_rollno.

LOOP AT gt_stu INTO gs_stu.

  LOOP AT gt_score INTO gs_score WHERE roll_no EQ gs_stu-roll_no.
    gs_output-roll_no = gs_stu-roll_no.
    gs_output-first_name = gs_stu-first_name.
    gs_output-last_name = gs_stu-last_name.
    gs_output-subject = gs_score-subject.
    gs_output-score = gs_score-score.
    APPEND gs_output TO gt_output.
    CLEAR gs_output.
  ENDLOOP.

ENDLOOP.

LOOP AT gt_output INTO gs_output.
  WRITE: / gs_output-roll_no, gs_output-first_name, gs_output-last_name,
           gs_output-subject, gs_output-score.
ENDLOOP.













*DATA: gs_stu TYPE zkb_student,
*      gt_score TYPE TABLE OF zkb_score.
*
*PARAMETERS: p_rollno TYPE zkb_rollno_de OBLIGATORY.
*
*SELECT SINGLE * FROM zkb_student INTO gs_stu WHERE roll_no EQ p_rollno.
*
*SELECT * FROM zkb_score INTO TABLE gt_score WHERE roll_no EQ p_rollno.
*
*LOOP AT gt_score INTO gs_score.
*  WRITE: / gs_stu-roll_no, gs_stu-first_name, gs_stu-last_name, gs_score-subject, gs_score-score.
*ENDLOOP.
