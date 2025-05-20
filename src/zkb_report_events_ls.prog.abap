*&---------------------------------------------------------------------*
*& Report ZKB_REPORT_EVENTS_LS
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zkb_report_events_ls NO STANDARD PAGE HEADING.

TYPES: BEGIN OF gty_person,
         name(40),
         age(3)   TYPE n,
         gender,
         bgrp(10),
       END OF gty_person.

DATA: gt_person TYPE TABLE OF gty_person,
      gs_person TYPE gty_person.

START-OF-SELECTION.

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

END-OF-SELECTION.
  LOOP AT gt_person INTO gs_person.
    WRITE: / gs_person-name, gs_person-age, gs_person-gender, gs_person-bgrp.
  ENDLOOP.

AT LINE-SELECTION.
  READ TABLE gt_person INTO gs_person INDEX sy-lilli.
  IF sy-subrc EQ 0.
    WRITE: / gs_person-name, gs_person-age, gs_person-gender, gs_person-bgrp.
  ENDIF.
