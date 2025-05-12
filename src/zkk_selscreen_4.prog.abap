*&---------------------------------------------------------------------*
*& Report zkk_selscreen_4
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zkk_selscreen_4 NO STANDARD PAGE HEADING.

SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-001.

PARAMETERS: p_garden AS CHECKBOX,
            p_travel AS CHECKBOX,
            p_v_game AS CHECKBOX,
            p_w_stor AS CHECKBOX,
            p_w_song AS CHECKBOX,
            p_cookin AS CHECKBOX,
            p_washin AS CHECKBOX,
            p_new_tl AS CHECKBOX,
            p_mu_ins AS CHECKBOX,
            p_soc_sr AS CHECKBOX,
            p_seepin AS CHECKBOX,
            p_met_fr AS CHECKBOX,
            p_photog AS CHECKBOX.

SELECTION-SCREEN END OF BLOCK b1.


TYPES: BEGIN OF ty_activity,
         activity TYPE string,
       END OF ty_activity.

DATA: gs_activ TYPE ty_activity,
      it_activ TYPE TABLE OF ty_activity,
      gv_f_str TYPE string.

IF p_garden = 'X'.
  gs_activ-activity = 'Gardening'.
  APPEND gs_activ TO it_activ.
  CLEAR gs_activ.
ENDIF.

IF p_travel = 'X'.
  gs_activ-activity = 'Traveling'.
  APPEND gs_activ TO it_activ.
  CLEAR gs_activ.
ENDIF.

IF p_v_game = 'X'.
  gs_activ-activity = 'Playing video Games'.
  APPEND gs_activ TO it_activ.
  CLEAR gs_activ.
ENDIF.

IF p_w_stor = 'X'.
  gs_activ-activity = 'Writing Stories'.
  APPEND gs_activ TO it_activ.
  CLEAR gs_activ.
ENDIF.

IF p_w_song = 'X'.
  gs_activ-activity = 'Writing Songs'.
  APPEND gs_activ TO it_activ.
  CLEAR gs_activ.
ENDIF.

IF p_cookin = 'X'.
  gs_activ-activity = 'Cooking'.
  APPEND gs_activ TO it_activ.
  CLEAR gs_activ.
ENDIF.

IF p_washin = 'X'.
  gs_activ-activity = 'Washing'.
  APPEND gs_activ TO it_activ.
  CLEAR gs_activ.
ENDIF.

IF p_new_tl = 'X'.
  gs_activ-activity = 'Learning New Talent'.
  APPEND gs_activ TO it_activ.
  CLEAR gs_activ.
ENDIF.

IF p_mu_ins = 'X'.
  gs_activ-activity = 'Playing Musical Instruments'.
  APPEND gs_activ TO it_activ.
  CLEAR gs_activ.
ENDIF.

IF p_soc_sr = 'X'.
  gs_activ-activity = 'Social Service'.
  APPEND gs_activ TO it_activ.
  CLEAR gs_activ.
ENDIF.

IF p_seepin = 'X'.
  gs_activ-activity = 'Seeping'.
  APPEND gs_activ TO it_activ.
  CLEAR gs_activ.
ENDIF.

IF p_met_fr = 'X'.
  gs_activ-activity = 'Meeting Friends'.
  APPEND gs_activ TO it_activ.
  CLEAR gs_activ.
ENDIF.

IF p_photog = 'X'.
  gs_activ-activity = 'Photography'.
  APPEND gs_activ TO it_activ.
  CLEAR gs_activ.
ENDIF.

LOOP AT it_activ INTO gs_activ.
  IF gv_f_str IS INITIAL.
    gv_f_str = gs_activ-activity.
  ELSE.
    CONCATENATE gv_f_str gs_activ-activity INTO gv_f_str SEPARATED BY ', '.
  ENDIF.
ENDLOOP.

WRITE: / |The selection is: { gv_f_str } |.






.
