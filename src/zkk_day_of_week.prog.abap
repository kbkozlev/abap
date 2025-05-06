*&---------------------------------------------------------------------*
*& Report zkk_day_of_week
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zkk_day_of_week NO STANDARD PAGE HEADING.

*3. Create a program to display the day based on the input number.
*
*Selscreen:
*Day  to provide any number from the below table; mandatory
*
*Processing Logic:
*Based on the selscreen day, the text to be displayed in the output.
*
*
*1 Sunday
*
*2 Monday
*
*3 Tuesday
*
*4 Wednesday
*
*5 Thursday
*
*6 Friday
*
*7 Saturday

PARAMETERS: lp_day TYPE i OBLIGATORY.
DATA: lv_day TYPE string.

IF lp_day = 1.
  lv_day = 'Sunday'.
ELSEIF lp_day = 2.
  lv_day = 'Monday'.
ELSEIF lp_day = 3.
  lv_day = 'Tuesday'.
ELSEIF lp_day = 4.
  lv_day = 'Wednesday'.
ELSEIF lp_day = 5.
  lv_day = 'Thursday'.
ELSEIF lp_day = 6.
  lv_day = 'Friday'.
ELSEIF lp_day = 7.
  lv_day = 'Saturday'.
ENDIF.

WRITE: | { lv_day } |.


*Selection texts
*----------------------------------------------------------
* LP_DAY         Day of Week (1-7)
