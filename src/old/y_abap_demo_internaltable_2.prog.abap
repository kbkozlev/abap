*&---------------------------------------------------------------------*
*& Report Y_ABAP_DEMO_INTERNALTABLE_2
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT y_abap_demo_internaltable_2.

TYPES: BEGIN OF ltys_tab,
         col1 TYPE string,
         col2 TYPE string,
         col3 TYPE string,
       END OF ltys_tab.

DATA: lt_tab1 TYPE STANDARD TABLE OF ltys_tab.
"lt_tab2 like lt_tab1.

START-OF-SELECTION.
  lt_tab1 = VALUE #( ( col1 = '1' col2 = '11' col3 = '111' )
                     ( col1 = '2' col2 = '22' col3 = '3' )
                     ( col1 = '1' col2 = '0' col3 = '3' ) ).

  DATA(lv_col1) = VALUE #( lt_tab1[ 2 ]-col1 OPTIONAL ).

  WRITE lv_col1.






*  data(ls_row) = value #( lt_tab1[ 1 ] ).     "Index
*  DATA(ls_row) = VALUE #( lt_tab1[ col1 = '3' ] OPTIONAL ).     "With condition


*  data(lv_lines) = lines( lt_tab1 ).
*  DESCRIBE TABLE lt_tab1 LINES DATA(lv_lines).
*
*  IF NOT line_exists( lt_tab1[ col1 = '3' ] ).
*    MESSAGE 'Does not exist' TYPE 'I'.
*  ENDIF.
*
*  WRITE: 'No. of rows:', lv_lines.

*  READ TABLE lt_tab1 WITH KEY col1 = '2' INTO DATA(ls_row). " ASSIGNING FIELD-SYMBOL(<fs_row>).
*
*  IF sy-subrc = 0.    "NO ERROR = 0
*    MESSAGE 'Entry found' TYPE 'I'.
*  ELSE.
*    MESSAGE 'Error raised' TYPE 'I'.
*  ENDIF.

*  data(lt_tab2) = lt_tab1.
*  delete lt_tab2 where col1 <> '1'.

*  LOOP AT lt_tab1 INTO ls_row WHERE col1 = '1'.
*    append ls_row to lt_tab2.
*  ENDLOOP.

*  cl_demo_output=>display( lt_tab1 ).

