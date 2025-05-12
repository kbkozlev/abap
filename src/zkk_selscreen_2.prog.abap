*&---------------------------------------------------------------------*
*& Report zkk_selscreen_2
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zkk_selscreen_2 NO STANDARD PAGE HEADING.

SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-001.
SELECTION-SCREEN BEGIN OF LINE.

PARAMETERS: p_m RADIOBUTTON GROUP gen.
SELECTION-SCREEN COMMENT (10) text1 FOR FIELD p_m.

PARAMETERS: p_f RADIOBUTTON GROUP gen.
SELECTION-SCREEN COMMENT (10) text2 FOR FIELD p_f.

PARAMETERS: p_t RADIOBUTTON GROUP gen.
SELECTION-SCREEN COMMENT (10) text3 FOR FIELD p_t.

SELECTION-SCREEN END OF LINE.
SELECTION-SCREEN END OF BLOCK b1.

INITIALIZATION.
  text1 = 'Male'.
  text2 = 'Female'.
  text3 = 'Transgender'.

* Why does it not work from here?
DATA: gv_gen TYPE string.

  CASE abap_true.
    WHEN p_m.
      gv_gen = 'Male'.
    WHEN p_f.
      gv_gen = 'Female'.
    WHEN p_t.
      gv_gen = 'Transgender'.
  ENDCASE.

  WRITE: / |Gender: { gv_gen } |.
