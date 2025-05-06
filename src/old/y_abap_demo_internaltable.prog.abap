*&---------------------------------------------------------------------*
*& Report Y_ABAP_DEMO_INTERNALTABLE
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT y_abap_demo_internaltable.

TYPES: BEGIN OF ltys_tab,
         col1 TYPE string,
         col2 TYPE string,
         col3 TYPE string,
       END OF ltys_tab,

       ltyt_tab TYPE STANDARD TABLE OF ltys_tab.

*data ls_row type ltys_tab.

*DATA: lt_tab1 TYPE ltyt_tab.

DATA: lt_tab1 TYPE STANDARD TABLE OF ltys_tab,
      lt_tab2 TYPE STANDARD TABLE OF ltys_tab,
      lt_tab3 TYPE STANDARD TABLE OF ltys_tab.

TYPES ltyt_sflight TYPE STANDARD TABLE OF sflight.
DATA ls_row LIKE LINE OF lt_tab1.

DATA lt_flights TYPE STANDARD TABLE OF sflight.

*FIELD-SYMBOLS: <fs_row> type ltys_tab.

START-OF-SELECTION.
  " Regular work area - structure
  " Field symbol - structure that points to the memory

  lt_tab1 = VALUE #( ( col1 = '1' col2 = '11' col3 = '111' )
                     ( col1 = '2' col2 = '22' col3 = '3' )
                     ( col1 = '1' col2 = '0' col3 = '3' ) ).

  SORT lt_tab1 BY col1 DESCENDING col2 ASCENDING.

  cl_demo_output=>display( data = lt_tab1 name = 'LT_TAB1 Before Change:').

*  LOOP AT lt_tab1 ASSIGNING FIELD-SYMBOL(<fs_row>).
  LOOP AT lt_tab1 INTO ls_row.
    ls_row-col1 = |Index: { sy-tabix }|.
    WRITE: / ls_row-col1, ls_row-col2, ls_row-col3.
  ENDLOOP.

*  cl_demo_output=>display( data = ls_row name = 'LT_TAB1 After Change:').

*  LOOP AT lt_tab1 INTO ls_row.
*    WRITE: / ls_row-col1, ls_row-col2, ls_row-col3.
*  ENDLOOP.

*  cl_demo_output=>display( lt_tab1 ).


*  APPEND INITIAL LINE TO lt_tab1 ASSIGNING FIELD-SYMBOL(<fs_row>).
*  <fs_row>-col1 = 'A1'.
*  <fs_row>-col2 = 'B1'.
*  <fs_row>-col3 = 'C1'.
*
*  APPEND INITIAL LINE TO lt_tab1 ASSIGNING <fs_row>.
*  <fs_row>-col1 = 'A1'.
*  <fs_row>-col2 = 'B1'.
*  <fs_row>-col3 = 'C1'.


*  cl_demo_output=>display( lt_flights ).
*  lt_tab1 = VALUE #(  ( col1 = '1' col2 = '2' col3 = '3' )
*                      ( col1 = '4' col2 = '5' col3 = '6' )
*                      ( col1 = '7' col2 = '8' col3 = '9' ) ).
*
*  SORT lt_tab1 BY col1 DESCENDING.
*
*  lt_tab2 = VALUE #(  ( col1 = 'A' col2 = 'B' col3 = 'C' )
*                      ( col1 = 'D' col2 = 'E' col3 = 'F' )
*                      ( col1 = 'G' col2 = 'H' col3 = 'I' ) ).

****  LOOP AT lt_tab1 INTO DATA(ls_tab1).
****    "Get the row from LS_TAB2
****    DATA(ls_tab2) = VALUE #( lt_tab2[ sy-tabix ] ).
****
****    lt_tab3 = VALUE #(  BASE lt_tab3
****                        ( col1 = |{ ls_tab1-col1 }{ ls_tab2-col1 }|
****                          col2 = |{ ls_tab1-col2 }{ ls_tab2-col2 }|
****                          col3 = |{ ls_tab1-col3 }{ ls_tab2-col3 }| ) ).
****  ENDLOOP.

*  cl_demo_output=>write( lt_tab1 ).
*  cl_demo_output=>write( lt_tab2 ).
*****  cl_demo_output=>write( lt_tab3 ).
*  cl_demo_output=>display( ).

