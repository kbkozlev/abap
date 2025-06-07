*&---------------------------------------------------------------------*
*& Report  ZKB_DBTAB_PUTACTIONS
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT zkb_dbtab_putactions.

TYPES: BEGIN OF gty_score,
        roll_no TYPE zkb_rollno_de,
        subject TYPE zkb_sub_de,
        score TYPE i,
       END OF gty_score.

DATA: gt_score TYPE TABLE OF gty_score,
      gs_score TYPE gty_score.

*DATA: gt_score TYPE TABLE OF zkb_score,
*      gs_score TYPE zkb_score.

*----------------------------------------------------------*
**************** GET Action *******************************
*----------------------------------------------------------*

*ROLL_NO  ZKB_ROLLNO_DE NUMC  3 0 Student Roll Number
*SUBJECT  ZKB_SUB_DE  CHAR  3 0 Subject
*SCORE  INT2  INT2  5 0 2 byte integer (signed)
*REWARD NETPR CURR  11  2 Net price


SELECT SINGLE roll_no subject score
  FROM zkb_score
  INTO gs_score
  WHERE roll_no EQ 1
  AND subject EQ 'ENG'.

WRITE: / gs_score-roll_no, gs_score-subject.


*SELECT roll_no subject score
*  FROM zkb_score
*  INTO TABLE gt_score
*  WHERE roll_no EQ 1
*  AND subject EQ 'ENG'.
*
*LOOP AT gt_score INTO gs_score.
*  WRITE: / gs_score-roll_no, gs_score-subject.
*ENDLOOP.


*SELECT SINGLE *
*  FROM zkb_score
*  INTO gs_score
*  WHERE subject EQ 'MAT'.
*
*WRITE: / gs_score-roll_no, gs_score-subject.


*SELECT *
*  FROM zkb_score
*  INTO gs_score.
*
*
*  WRITE: / gs_score-roll_no, gs_score-subject.
*
*ENDSELECT.






*----------------------------------------------------------*
**************** PUT Actions *******************************
*----------------------------------------------------------*
*gs_score-roll_no = 3.
*gs_score-subject = 'SCI'.
*gs_score-score = 40.
*APPEND gs_score TO gt_score.
*CLEAR gs_score.
*
*gs_score-roll_no = 3.
*gs_score-subject = 'SOC'.
*gs_score-score = 60.
*APPEND gs_score TO gt_score.
*CLEAR gs_score.
*
*MODIFY zkb_score FROM TABLE gt_score.


**INSERT INTO zkb_score VALUES gs_score.
**UPDATE zkb_score FROM gs_score.
**UPDATE zkb_score SET score = 100 WHERE subject = 'MAT'.
**MODIFY zkb_score FROM gs_score.
*DELETE zkb_score FROM gs_score.
*IF sy-subrc EQ 0.
*  MESSAGE 'All good' TYPE 'S'.
*ELSE.
*  MESSAGE 'Bad' TYPE 'E'.
*ENDIF.
