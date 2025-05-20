*&---------------------------------------------------------------------*
*& Report zkk_ytest
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zkk_ytest NO STANDARD PAGE HEADING.

*
*DATA: it_fli TYPE TABLE OF sflight,
*      gv_fli TYPE sflight.
*
*SELECT * FROM sflight INTO TABLE it_fli.
*
*LOOP AT it_fli INTO gv_fli.
*  WRITE: / gv_fli-carrid, gv_fli-connid, gv_fli-fldate, gv_fli-price.
*ENDLOOP.

SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-001.
PARAMETERS: p_server TYPE string OBLIGATORY,
            p_inum   TYPE c LENGTH 2 OBLIGATORY,
            p_client TYPE c LENGTH 3,
            p_uname  TYPE string,
            p_lang   TYPE c LENGTH 2,
            p_trans  TYPE string.
SELECTION-SCREEN END OF BLOCK b1.

TYPES: ty_str TYPE string.
DATA: it_fstr  TYPE TABLE OF ty_str,
      gs_str   TYPE ty_str,
      gv_final TYPE string VALUE 'conn='.

IF p_server IS NOT INITIAL.
  gs_str = |/H/{ p_server }|.
  APPEND gs_str TO it_fstr.
  CLEAR gs_str.
ENDIF.

IF p_inum IS NOT INITIAL.
  gs_str = |/S/32{ p_inum }|.
  APPEND gs_str TO it_fstr.
  CLEAR gs_str.
ENDIF.

IF p_client IS NOT INITIAL.
  gs_str = |&clnt={ p_client }|.
  APPEND gs_str TO it_fstr.
  CLEAR gs_str.
ENDIF.

IF p_uname IS NOT INITIAL.
  gs_str = |&user={ p_uname }|.
  APPEND gs_str TO it_fstr.
  CLEAR gs_str.
ENDIF.

IF p_lang IS NOT INITIAL.
  gs_str = |&lang={ p_lang }|.
  APPEND gs_str TO it_fstr.
  CLEAR gs_str.
ENDIF.

IF p_trans IS NOT INITIAL.
  IF p_trans CP '/n*'.
    SHIFT p_trans BY 2 PLACES.
    gs_str = |&tran={ p_trans }|.
  ELSE.
    gs_str = |&tran={ p_trans }|.

    APPEND gs_str TO it_fstr.
    CLEAR gs_str.
  ENDIF.
ENDIF.

LOOP AT it_fstr INTO gs_str.
  CONCATENATE gv_final gs_str INTO gv_final.
  CLEAR gs_str.
ENDLOOP.

WRITE: |Final String: { gv_final }|.




















.
