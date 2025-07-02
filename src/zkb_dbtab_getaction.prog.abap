*&---------------------------------------------------------------------*
*& Report  ZKB_DBTAB_GETACTION
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT zkb_dbtab_getaction.

INCLUDE: zkb_dbtab_getaction_top,
         zkb_dbtab_getaction_sel,
         zkb_dbtab_getaction_f01.

AT SELECTION-SCREEN.
  PERFORM validate_selscreen.

START-OF-SELECTION.
  PERFORM get_data.

END-OF-SELECTION.
  PERFORM process_data.

















**SELECT zkb_student~roll_no first_name
**  last_name subject score
**  FROM zkb_student
**  INNER JOIN zkb_score
**  ON zkb_student~roll_no EQ zkb_score~roll_no
**  INTO TABLE gt_student.
***  WHERE zkb_student~roll_no EQ p_rollno.

*SELECT zkb_student~roll_no first_name
*  last_name subject score
*  FROM zkb_student
*  LEFT OUTER JOIN zkb_score
*  ON zkb_student~roll_no EQ zkb_score~roll_no
*  INTO TABLE gt_student.





*SELECT SINGLE *
*  FROM zkb_student
*  INTO gs_student
*  WHERE roll_no EQ p_rollno.
