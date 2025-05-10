*&---------------------------------------------------------------------*
*& Report zkk_string_man
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zkk_string_man NO STANDARD PAGE HEADING.

PARAMETERS: p_input TYPE string LOWER CASE.

DATA: gc_str TYPE string,
      gc_num TYPE string.

gc_str = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'.
gc_num = '0123456789'.

IF p_input CO gc_str.
  WRITE: / 'Input value is all alphabets'.
ELSEIF p_input CO gc_num.
  WRITE: / 'Input value is all numbers'.
ELSEIF p_input CA gc_num AND p_input CA gc_str.
  WRITE: / 'Input value is alphanumeric'.
ENDIF.
