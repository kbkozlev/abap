*&---------------------------------------------------------------------*
*& Report ZKB_OPERATIONS_CONDITIONS
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zkb_operations_conditions.

PARAMETERS: p_age TYPE i OBLIGATORY.

IF p_age LT 5.
  WRITE / 'Toddler'.
ELSEIF p_age GE 5 AND p_age LT 13.
  WRITE / 'Kid'.
ELSEIF p_age BETWEEN 13 AND 19.
  WRITE / 'Teenager'.
ENDIF.




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

