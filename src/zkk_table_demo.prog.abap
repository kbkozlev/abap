*&---------------------------------------------------------------------*
*& Report zkk_table_demo
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zkk_table_demo NO STANDARD PAGE HEADING.


WRITE: /(60) '------------------------------------------------------------',
       /     '|', 14(4) 'NAME' COLOR 3, 18(12) '', '|', 44(6) 'GENDER' COLOR 3, 50(9) '', '|',
       /(60) '------------------------------------------------------------',
       /(60) '|XYZ                          |Male                        |',
       /(60) sy-uline,
*       /(60) '------------------------------------------------------------',
       / sy-vline, (60) 'ABC                          |Female                      |',
       /(60) '------------------------------------------------------------'.
