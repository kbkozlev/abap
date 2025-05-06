*&---------------------------------------------------------------------*
*& Report Y_TEST
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT Y_TEST.

TYPES: BEGIN OF ltys_student,
         fname TYPE string,
         lname TYPE string,
         bday  TYPE sy-datum,
       END OF ltys_student.

"Structure
DATA(ls_student) = VALUE ltys_student(  fname = 'Kassandra'
                                        lname = 'Abuda'
                                        bday = '19971112' ).

cl_demo_output=>write( ls_student ).
cl_demo_output=>display( ).

*data(lv_str) = strlen( |{ upper( test ) }| ).
*write lv_str.
