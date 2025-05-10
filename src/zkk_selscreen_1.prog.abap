*&---------------------------------------------------------------------*
*& Report zkk_selscreen_1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zkk_selscreen_1 NO STANDARD PAGE HEADING.

SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-001.
PARAMETERS: p_m RADIOBUTTON GROUP gen,
            p_f RADIOBUTTON GROUP gen,
            p_t RADIOBUTTON GROUP gen.
SELECTION-SCREEN END OF BLOCK b1.

SELECTION-SCREEN BEGIN OF BLOCK b2 WITH FRAME TITLE TEXT-002.
PARAMETERS: p_ad AS CHECKBOX DEFAULT 'X',
            p_ch AS CHECKBOX.
SELECTION-SCREEN END OF BLOCK b2.

DATA: gv_gen TYPE string,
      gv_age TYPE string.

CASE abap_true.
  WHEN p_m.
    gv_gen = 'Male'.
  WHEN p_f.
    gv_gen = 'Female'.
  WHEN p_t.
    gv_gen = 'Transgender'.
ENDCASE.


IF p_ad = 'X'.
  gv_age = 'Adult'.
ENDIF.

IF p_ch = 'X'.
  gv_age = 'Child'.
ENDIF.

IF p_ad = 'X' AND p_ch = 'X'.
  gv_age = 'Adult, Child'.
ENDIF.


WRITE: / |Gender Selected: { gv_gen }|,
       / |Child/Adult Selection: { gv_age }|.
