*&---------------------------------------------------------------------*
*& Report zkk_fibonacci
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*

REPORT zkk_fibonacci NO STANDARD PAGE HEADING.

PARAMETERS: p_iter TYPE i DEFAULT 10.

DATA: lv_var1   TYPE i VALUE 0,
      lv_var2   TYPE i VALUE 1,
      lv_result TYPE i,
      lv_count  TYPE i VALUE 1.

WRITE: /(23) '-----------------------',
       /(23) '| Iteration | Result  |',
       /(23) '-----------------------'.

DO p_iter TIMES.
  lv_result = lv_var1 + lv_var2.
  WRITE: /(23) '|', 9(3) lv_count,  '|', 15(7) lv_result, '|',
         /(23) '------------------------'.
  lv_var1 = lv_var2.
  lv_var2 = lv_result.
  lv_count = lv_count + 1.
ENDDO.
