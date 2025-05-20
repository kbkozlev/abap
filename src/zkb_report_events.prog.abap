*&---------------------------------------------------------------------*
*& Report ZKB_REPORT_EVENTS
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zkb_report_events NO STANDARD PAGE HEADING LINE-COUNT 20(1) .

DATA: lv_day(20).

SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE title.
PARAMETERS: p_day TYPE n OBLIGATORY.
SELECTION-SCREEN END OF BLOCK b1.


*LOAD-OF-PROGRAM.

INITIALIZATION.
  title = 'Day Selection'.
  p_day = 1.

START-OF-SELECTION.
  CASE p_day.
    WHEN 1.
      lv_day = 'Sunday'.
    WHEN 2.
      lv_day = 'Monday'.
    WHEN 3.
      lv_day = 'Tuesday'.
    WHEN 4.
      lv_day = 'Wednesday'.
    WHEN OTHERS.
  ENDCASE.

AT SELECTION-SCREEN.
  IF p_day GT 4.
    MESSAGE 'Please input a valid day' TYPE 'E'.
  ENDIF.

END-OF-SELECTION.
  DO 30 TIMES.
    WRITE / lv_day.
  ENDDO.

TOP-OF-PAGE.
  WRITE: / 'This is Header'.

END-OF-PAGE.
  WRITE: / 'This is footer'.

AT LINE-SELECTION.
  WRITE 'Line selected'.
