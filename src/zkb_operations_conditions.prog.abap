*&---------------------------------------------------------------------*
*& Report ZKB_OPERATIONS_CONDITIONS
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zkb_operations_conditions.


PARAMETERS: p_name(40) LOWER CASE OBLIGATORY DEFAULT 'Bujji'. " Bujji

IF p_name CS 'ui'.    " Contains String --> NS Not Contains String

ELSE.
  " Prints
ENDIF.

IF p_name CA 'ui'.    " Contains Any --> NA Not Contains Any

ENDIF.

IF p_name CP '*i'.    " Contains Pattern --> NP Not Contains Pattern

ENDIF.

IF p_name CO 'Bjui'.    " Contains Only --> CN  Not Contains Only

ENDIF.

WRITE p_name+3(6).


* Character Operations

*DATA: gv_name TYPE c LENGTH 40.
*DATA: gv_name(40) TYPE c.
*DATA: gv_name(40).

*PARAMETERS: p_fname(40) LOWER CASE OBLIGATORY,
*            p_lname(40) LOWER CASE OBLIGATORY.
*
*DATA: gv_full(100).
*
*CONCATENATE p_fname p_lname INTO gv_full SEPARATED BY ','.
*
*WRITE gv_full.

*PARAMETERS: p_full(100) LOWER CASE OBLIGATORY.
*
*DATA: gv_fname(40), gv_lname(40), gv_extra(40).
*
*SPLIT p_full AT space INTO gv_fname gv_lname gv_extra.
*
*WRITE: / gv_fname, / gv_lname, / gv_extra.
*
*PARAMETERS: p_name(40) LOWER CASE OBLIGATORY.
*
*TRANSLATE p_name TO UPPER CASE.
*CONDENSE p_name NO-GAPS.
*WRITE p_name.
*
*SHIFT


*PARAMETERS: p_age TYPE i OBLIGATORY.
*
*IF p_age LT 5.
*  WRITE / 'Toddler'.
*ELSEIF p_age GE 5 AND p_age LT 13.
*  WRITE / 'Kid'.
*ELSEIF p_age BETWEEN 13 AND 19.
*  WRITE / 'Teenager'.
*ENDIF.




*EQ =
*NE <>
*GT >
*LT <
*GE >=
*LE <=
*BETWEEN x AND y


*IF p_age LT 5.
*  WRITE / 'Toddler'.
*ENDIF.
*
*IF p_age BETWEEN 5 AND 13.
*  WRITE / 'Kid'.
*ENDIF.
*
*IF p_age BETWEEN 13 AND 19.
*  WRITE / 'Teenager'.
*ENDIF.
*
*IF p_age BETWEEN 19 AND 60.
*  WRITE / 'Adult'.
*ENDIF.
*
*IF p_age GE 60.
*  WRITE / 'Senior Citizen'.
*ENDIF.

*PARAMETERS: p_value1 TYPE i,
*            p_value2 TYPE i.
*
*DATA: result TYPE i.
*
*result = p_value1 + p_value2.
*
*WRITE result LEFT-JUSTIFIED.


*Selection texts
*----------------------------------------------------------
* P_VALUE1         Value 1
* P_VALUE2         Value 2
