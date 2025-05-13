*&---------------------------------------------------------------------*
*& Report zkk_internal_tables_2
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zkk_internal_tables_2 NO STANDARD PAGE HEADING.

TYPES: BEGIN OF ty_person,
         roll TYPE n LENGTH 4,
         name TYPE c LENGTH 40,
       END OF ty_person.

DATA: gs_person TYPE ty_person,
      it_person TYPE TABLE OF ty_person.

gs_person-roll = 100.
gs_person-name = 'Bharathi'.
APPEND gs_person TO it_person.
CLEAR gs_person.

gs_person-roll = 200.
gs_person-name = 'Bharath'.
APPEND gs_person TO it_person.
CLEAR gs_person.

gs_person-roll = 300.
gs_person-name = 'Amar'.
APPEND gs_person TO it_person.
CLEAR gs_person.

gs_person-roll = 400.
gs_person-name = 'Abhinay'.
APPEND gs_person TO it_person.
CLEAR gs_person.

gs_person-roll = 500.
gs_person-name = 'Abhiram'.
APPEND gs_person TO it_person.
CLEAR gs_person.

gs_person-roll = 600.
gs_person-name = 'Ramu'.
APPEND gs_person TO it_person.
CLEAR gs_person.

gs_person-roll = 700.
gs_person-name = 'Shyam'.
APPEND gs_person TO it_person.
CLEAR gs_person.

gs_person-roll = 800.
gs_person-name = 'Adharv'.
APPEND gs_person TO it_person.
CLEAR gs_person.

gs_person-roll = 900.
gs_person-name = 'Keerti'.
APPEND gs_person TO it_person.
CLEAR gs_person.

gs_person-roll = 1000.
gs_person-name = 'Murali'.
APPEND gs_person TO it_person.
CLEAR gs_person.

* Names containing 'ar'
WRITE: |Names that have string ‘ar’:| COLOR 3.
LOOP AT it_person INTO gs_person WHERE name CS 'ar'.
  WRITE : / gs_person-name.
ENDLOOP.
CLEAR gs_person.
SKIP 1.

* Names that start with 'A'
WRITE: |Names that start with 'A':| COLOR 3.
LOOP AT it_person INTO gs_person WHERE name CP 'A*'.
  WRITE : / gs_person-name.
ENDLOOP.
SKIP 1.

* Names that end with 'i'
WRITE: |Names that end with 'i':| COLOR 3.
LOOP AT it_person INTO gs_person WHERE name CP '*i'.
  WRITE : / gs_person-name.
ENDLOOP.
SKIP 1.

* Names that have 'am'
WRITE: |Names that have 'am':| COLOR 3.
LOOP AT it_person INTO gs_person WHERE name CS 'am'.
  WRITE : / gs_person-name.
ENDLOOP.
SKIP 1.

* Names that have neither ‘A’ nor ‘a
WRITE: |Names that have neither ‘A’ nor ‘a:| COLOR 3.
LOOP AT it_person INTO gs_person WHERE name NA 'Aa'.
  WRITE : / gs_person-name.
ENDLOOP.
SKIP 1.







.
