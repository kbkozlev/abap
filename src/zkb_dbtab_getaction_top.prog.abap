*&---------------------------------------------------------------------*
*&  Include           ZKB_DBTAB_GETACTION_TOP
*&---------------------------------------------------------------------*

TYPES: BEGIN OF gty_student,
        roll_no TYPE zkb_rollno_de,
        first_name TYPE zkb_name_de,
        last_name TYPE zkb_name_de,
        subject TYPE zkb_sub_de,
        score TYPE int2,
       END OF gty_student.

DATA: gs_student TYPE gty_student,
      gt_student TYPE TABLE OF gty_student.
