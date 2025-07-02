*&---------------------------------------------------------------------*
*& Report  ZKB_ADD
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT zkb_add.

PARAMETERS: p_val1 TYPE int1,
            p_val2 TYPE int1.

DATA: gv_result TYPE int1.

CALL FUNCTION 'ZKB_ADD_FM'
  EXPORTING
    iv_val1          = p_val1
    iv_val2          = p_val2
  IMPORTING
    ev_result        = gv_result
  CHANGING
    cv_val1          = p_val1
  EXCEPTIONS
    division_by_zero = 1
    OTHERS           = 2.
IF sy-subrc <> 0.
  MESSAGE 'Division by zero is not allowed' TYPE 'S' DISPLAY LIKE 'E'.
  LEAVE LIST-PROCESSING.
ENDIF.



WRITE: gv_result, / p_val1.

*DATA: gv_date TYPE d.
*gv_date = sy-datum + 90.
*
*WRITE gv_date.
