*&---------------------------------------------------------------------*
*& Report y_abap_kk_other_exercises
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT y_abap_kk_other_exercises.

TYPES: BEGIN OF ltys_student,
         first_name TYPE string,
         last_name  TYPE string,
         age        TYPE i,
       END OF ltys_student.

DATA(ls_student1) = VALUE ltys_student( first_name = 'Kaloian'
                                        last_name = 'Kozlev'
                                        age = 29 ).

DATA(ls_student2) = VALUE ltys_student( first_name = 'Victoria'
                                        last_name = 'Ivanova'
                                        age = 30 ).

WRITE: |Student 1: { ls_student1-first_name } { ls_student1-last_name } is { ls_student1-age } years old. |,
     / |Student 2: { ls_student2-first_name } { ls_student2-last_name } is { ls_student2-age } years old. |.
