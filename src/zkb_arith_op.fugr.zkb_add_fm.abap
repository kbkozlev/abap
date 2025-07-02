FUNCTION zkb_add_fm.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"  IMPORTING
*"     REFERENCE(IV_VAL1) TYPE  INT1
*"     REFERENCE(IV_VAL2) TYPE  INT1 OPTIONAL
*"  EXPORTING
*"     REFERENCE(EV_RESULT) TYPE  INT1
*"  CHANGING
*"     VALUE(CV_VAL1) TYPE  INT1 OPTIONAL
*"  EXCEPTIONS
*"      DIVISION_BY_ZERO
*"----------------------------------------------------------------------

*  cv_val1 = cv_val1 + 10.
*  ev_result = iv_val1 + iv_val2.

  IF iv_val2 IS INITIAL.
    RAISE division_by_zero.
*    MESSAGE 'Division by zero is not allowed' TYPE 'E'.
  ENDIF.
  ev_result = iv_val1 / iv_val2.

ENDFUNCTION.
