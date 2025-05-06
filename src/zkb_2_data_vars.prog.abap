*&---------------------------------------------------------------------*
*& Report ZKB_2_DATA_VARS
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZKB_2_DATA_VARS NO STANDARD PAGE HEADING.

TYPES: BEGIN OF ty_person,
        name TYPE c LENGTH 40,
        gender TYPE c,
        age TYPE n LENGTH 3,
       END OF ty_person.

DATA: t_person TYPE TABLE OF ty_person,
      s_person TYPE ty_person.

s_person-name = 'Bujji'.
s_person-gender = 'F'.
s_person-age = 39.
APPEND s_person to t_person.

s_person-name = 'ABCD'.
s_person-gender = 'F'.
s_person-age = 39.
APPEND s_person to t_person.



*DATA: s_person TYPE ty_person.
**DATA: BEGIN OF person,
**        name TYPE c LENGTH 40,
**        gender TYPE c,
**        age TYPE n LENGTH 3,
**      END OF person.
*
*s_person-name = 'Bujji'.
*s_person-gender = 'F'.
*s_person-age = 39.
*
*s_person-gender = 'M'.
*s_person-age = 20.
*
*WRITE: s_person-name, / s_person-gender, / s_person-age.


*DATA: person_name TYPE c LENGTH 40,
*      person_gender TYPE c,
*      person_age TYPE n LENGTH 3.
*
*person_name = 'Bujji'.
*person_gender = 'Female'.
*person_age = 39.
*
*WRITE: person_name, / person_gender, / person_age.
