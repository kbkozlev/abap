*&---------------------------------------------------------------------*
*& Report Y_ABAP_DEMO_SELOPT
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT y_abap_demo_selopt.

TABLES: sflight, scarr.

PARAMETERS: p_carrid TYPE scarr-carrid OBLIGATORY." DEFAULT 'AA'.
SELECT-OPTIONS: s_fldate FOR sflight-fldate DEFAULT sy-datum.

START-OF-SELECTION.
  SELECT *
    FROM sflight
    WHERE carrid = @p_carrid
      AND fldate IN @s_fldate
    INTO @DATA(ls_flight).

    write: /  ls_flight-carrid,
              ls_flight-connid,
              ls_flight-fldate,
              ls_flight-price,
              ls_flight-seatsmax.
  ENDSELECT.


*Selection texts
*----------------------------------------------------------
* P_CARRID D       .
* S_FLDATE D       .

