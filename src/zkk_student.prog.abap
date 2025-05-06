*&---------------------------------------------------------------------*
*& Report zkk_student
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zkk_student NO STANDARD PAGE HEADING.

*1. Please create a report program to display the result of a student.
*
*Selscreen:
*Marks Scored  integer; mandatory
*
*Processing Logic:
*Based on the below table data, please display the result.
*
*Marks < 35
*
*Failed
*
*Between 35, 60
*
*Third Class
*
*Between 60, 75
*
*Second Class
*
*Between 75, 100
*
*First Class

PARAMETERS: lp_mark TYPE i OBLIGATORY.

DATA: lv_ans TYPE string.

IF lp_mark < 35.
  lv_ans = 'Failed'.

ELSEIF lp_mark BETWEEN 35 AND 60.
  lv_ans = 'Third Class'.

ELSEIF lp_mark BETWEEN 60 AND 75.
  lv_ans = 'Second Class'.

ELSEIF lp_mark BETWEEN 75 AND 100.
  lv_ans = 'First Class'.

ENDIF.

WRITE: |Result: { lv_ans } |.


*Selection texts
*----------------------------------------------------------
* LP_MARK         Mark
