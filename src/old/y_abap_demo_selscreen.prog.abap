*&---------------------------------------------------------------------*
*& Report Y_ABAP_DEMO_SELSCREN
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT Y_ABAP_DEMO_SELSCREEN.

SELECTION-SCREEN BEGIN OF BLOCK a WITH FRAME TITLE text-t01.
PARAMETERS: p_fname TYPE string,
            p_lname TYPE string,
            p_bday  TYPE sy-datum.
SELECTION-SCREEN end of block a.

SELECTION-SCREEN begin of block b WITH FRAME title text-t02.
  PARAMETERS: p_cb1 AS CHECKBOX,
              p_cb2 AS CHECKBOX DEFAULT 'X'.
SELECTION-SCREEN end of block b.

SELECTION-SCREEN begin of block c WITH FRAME title text-t03.
  PARAMETERS: p_rb1 RADIOBUTTON GROUP g1,
              p_rb2 RADIOBUTTON GROUP g1,
              p_rb3 RADIOBUTTON GROUP g2,
              p_rb4 RADIOBUTTON GROUP g2 default 'X',
              p_rb5 RADIOBUTTON GROUP g2.
SELECTION-SCREEN end of block c.

*Text elements
*----------------------------------------------------------
* T01 Parameters
* T02 Checkboxes
* T03 Radio Buttons


*Selection texts
*----------------------------------------------------------
* P_BDAY         Birthday
* P_CB1         Checkbox 1
* P_CB2         Checkbox 2
* P_FNAME         First Name
* P_LNAME         Last Name
* P_RB1         Radio1 G1
* P_RB2         Radio2 G1
* P_RB3         Radio1 G2
* P_RB4         Radio2 G2
* P_RB5         Radio3 G2

