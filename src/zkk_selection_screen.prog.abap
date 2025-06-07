REPORT ZKK_SELECTION_SCREEN NO STANDARD PAGE HEADING.

SELECTION-SCREEN BEGIN OF BLOCK B1 WITH FRAME TITLE TEXT-001.
PARAMETERS: P_GEN RADIOBUTTON GROUP SEL1 USER-COMMAND uc default 'X',
            P_AGE RADIOBUTTON GROUP SEL1.
SELECTION-SCREEN END OF BLOCK B1.

SELECTION-SCREEN BEGIN OF BLOCK B2 WITH FRAME TITLE TEXT-002.
PARAMETERS: P_M RADIOBUTTON GROUP GEN modif id g1,
            P_F RADIOBUTTON GROUP GEN modif id g1,
            P_T RADIOBUTTON GROUP GEN modif id g1.
SELECTION-SCREEN END OF BLOCK B2.

SELECTION-SCREEN BEGIN OF BLOCK B3 WITH FRAME TITLE TEXT-003.
PARAMETERS: P_CH AS CHECKBOX, " modif id g2,
            P_AD AS CHECKBOX. " modif id g2.
SELECTION-SCREEN END OF BLOCK B3.

AT SELECTION-SCREEN OUTPUT.
  LOOP AT SCREEN.

case abap_true.
  when p_gen.
*    if screen-group1 = 'G2'.
    if screen-name CS 'P_CH' or screen-name CS 'P_AD'.
      screen-active = 0.
      modify screen.
    endif.

  when p_age.
    if screen-group1 = 'G1'.
      screen-active = 0.
      modify screen.
    endif.
endcase.


  ENDLOOP.

  at SELECTION-SCREEN.
    WRITE 'Hi'.
