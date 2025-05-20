*&---------------------------------------------------------------------*
*& Report ZKB_ITABS
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zkb_itabs NO STANDARD PAGE HEADING.

TYPES: BEGIN OF gty_person,
         name(40),
         age(3)   TYPE n,
         gender,
         bgrp(10),
       END OF gty_person.

DATA: gt_person TYPE TABLE OF gty_person,
      gs_person TYPE gty_person.


*WHILE budget LE 1000.
*
*budget = budget + paid.
*ENDWHILE.

*DO 2 TIMES.
*  WRITE 'hello'.
*ENDDO.
*
*DO.
*  WRITE 'Hi'.
*  IF sy-index GT 2.
*    EXIT.
*  ENDIF.
*  if budget GT 1000.
*  EXIT.
*  endif.
*  budget = budget + paid.
*ENDDO.

gs_person-name = 'Bujji'.
gs_person-age = 39.
gs_person-bgrp = 'O+ve'.
APPEND gs_person TO gt_person.
CLEAR gs_person.

gs_person-name = 'Kal'.
gs_person-age = 20.
gs_person-gender = 'M'.
APPEND gs_person TO gt_person.
CLEAR gs_person.

gs_person-name = 'ABCD'.
gs_person-age = 30.
gs_person-gender = 'M'.
APPEND gs_person TO gt_person.
CLEAR gs_person.

gs_person-name = 'ABCD'.
gs_person-age = 20.
gs_person-gender = 'F'.
APPEND gs_person TO gt_person.
CLEAR gs_person.

gs_person-name = 'ABCD'.
gs_person-age = 20.
gs_person-gender = 'M'.
APPEND gs_person TO gt_person.
CLEAR gs_person.

gs_person-name = 'Hello'.
gs_person-age = 29.
gs_person-gender = 'M'.
APPEND gs_person TO gt_person.
*INSERT gs_person INTO gt_person INDEX 1.
CLEAR gs_person.

DATA: gv_lines TYPE i.
DESCRIBE TABLE gt_person LINES gv_lines.
WRITE gv_lines.

*SORT gt_person BY age DESCENDING name DESCENDING. "gender ASCENDING.
SORT gt_person DESCENDING BY age name.


LOOP AT gt_person INTO gs_person. " WHERE age LT 30 AND gender EQ 'F'.
*  sy-tabix
  WRITE: / gs_person-name, gs_person-age, gs_person-gender, gs_person-bgrp.
ENDLOOP.

*CLEAR gs_person.
*READ TABLE gt_person INTO gs_person INDEX 1.
*WRITE: / gs_person-name, gs_person-age, gs_person-gender, gs_person-bgrp.
*
*CLEAR gs_person.
*READ TABLE gt_person INTO gs_person WITH KEY gender = 'M' age = 30.
*IF sy-subrc EQ 0.
*  WRITE: / 'Person with gender M and age 30 is:', gs_person-name.
*ELSE.
*  WRITE: / 'No data'.
*ENDIF.
