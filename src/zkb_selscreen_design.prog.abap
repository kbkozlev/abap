*&---------------------------------------------------------------------*
*& Report ZKB_SELSCREEN_DESIGN
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zkb_selscreen_design.

SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-001.   "gv_tname.
PARAMETERS: p_name(40).
PARAMETERS: p_age TYPE i.
SELECTION-SCREEN END OF BLOCK b1.

SELECTION-SCREEN BEGIN OF BLOCK b2 WITH FRAME TITLE TEXT-002.   " gv_tage.
PARAMETERS: rb_f RADIOBUTTON GROUP gen,
            rb_m RADIOBUTTON GROUP gen DEFAULT 'X',
            rb_t RADIOBUTTON GROUP gen.
SELECTION-SCREEN END OF BLOCK b2.

SELECTION-SCREEN BEGIN OF BLOCK b3 WITH FRAME TITLE TEXT-003.
PARAMETERS: cb_music AS CHECKBOX DEFAULT abap_true, "'X',
            cb_movie AS CHECKBOX DEFAULT 'X'.
SELECTION-SCREEN END OF BLOCK b3.

*INITIALIZATION.
*gv_tname = 'Name Selection'.
*gv_tage = 'Age Selection'.

CASE abap_true.
  WHEN rb_f.
    WRITE / 'Female'.
  WHEN rb_m.
    WRITE / 'Male'.
  WHEN rb_t.
    WRITE / 'Transgender'.
ENDCASE.



IF rb_f IS NOT INITIAL.
  WRITE / 'Female'.
ELSEIF rb_m IS NOT INITIAL.
  WRITE / 'Male'.
ELSE.
  WRITE / 'Transgender'.
ENDIF.


IF cb_music IS INITIAL.   " space

ELSEIF cb_music IS NOT INITIAL. " some value is set
ENDIF.


IF cb_music EQ space.   " abap_false , abap_true
  WRITE 'Not interested in Music'.
*  else.
*  elseif cb_music eq 'X'.

ENDIF.
