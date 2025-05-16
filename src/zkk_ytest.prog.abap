*&---------------------------------------------------------------------*
*& Report zkk_ytest
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zkk_ytest NO STANDARD PAGE HEADING.


DATA: it_fli TYPE TABLE OF sflight,
      gv_fli TYPE sflight.

SELECT * FROM sflight INTO TABLE it_fli.

LOOP AT it_fli INTO gv_fli.
  WRITE: / gv_fli-carrid, gv_fli-connid, gv_fli-fldate, gv_fli-price.
ENDLOOP.
