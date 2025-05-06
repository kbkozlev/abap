*&---------------------------------------------------------------------*
*& Report ZKK_LEAVE_LETTER
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zkk_leave_letter NO STANDARD PAGE HEADING.

DATA: lv_day            TYPE c LENGTH 2,
      lv_month          TYPE c LENGTH 2,
      lv_year           TYPE c LENGTH 4,
      lv_formatted_date TYPE string.

lv_day   = sy-datum+6(2).
lv_month = sy-datum+4(2).
lv_year  = sy-datum(4).

lv_formatted_date = |{ lv_day }.{ lv_month }.{ lv_year }|.

WRITE: (100) 'Leave Letter' CENTERED,
       /84(16) |Date: { lv_formatted_date }| RIGHT-JUSTIFIED COLOR 6 INVERSE ON,
       /81(19) 'Place: Srikalahasti' RIGHT-JUSTIFIED COLOR 6 INVERSE ON,
       /(100) 'To',
       /(100) 'The Director',
       /(100) 'ABCDE Company',
       /(100) 'Bengaluru.'.
SKIP 2.
WRITE: (100) 'From',
       /(100) 'XYZ',
       /(100) 'Bengaluru.'.
SKIP 2.
WRITE: /(4)'Sub:' COLOR 3, (96) 'Just a test leave letter'.
SKIP 1.
WRITE: /(61)'This is just to understand how to use different extensions of', 'WRITE' COLOR 3 ,'statement.'.
SKIP 1.
WRITE: /(100) 'Yours truly,' RIGHT-JUSTIFIED,
       /(100) 'XYZ.' RIGHT-JUSTIFIED.
