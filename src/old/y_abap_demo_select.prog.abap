*&---------------------------------------------------------------------*
*& Report Y_ABAP_DEMO_SELECT
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT y_abap_demo_select.

*SELECT <fields>
*  FROM <table_name>
*  INTO TABLE @<internal_table> || INTO @<work_area>

*TYPES: BEGIN OF ltys_flight,
*         carrid   TYPE sflight-carrid,
*         connid   TYPE sflight-connid,
*         fldate   TYPE sflight-fldate,
*         price    TYPE sflight-price,
*         status   TYPE string,
*         seatsmax TYPE sflight-seatsmax,
*       END OF ltys_flight.
*
*DATA: ls_flight  TYPE ltys_flight,
*      lt_flights TYPE STANDARD TABLE OF ltys_flight.
*
*SELECT  carrid,
*        connid,
*        fldate,
*        price,
*        seatsmax
*  FROM sflight
*  INTO CORRESPONDING FIELDS OF TABLE @lt_flights.
*
*IF sy-subrc = 0.    "SY-SUBRC <> 0, this means an error was encountered
*  LOOP AT lt_flights ASSIGNING FIELD-SYMBOL(<fs_flight>).
*    "LOGIC HERE
*    <fs_flight>-status = 'CANCELLED'.
*  ENDLOOP.
*
*  cl_demo_output=>display( lt_flights ).
*ENDIF.

*SELECT  carrid
*        connid
*        fldate
*        price
*        seatsmax
*  FROM sflight
*  INTO ls_flight.
*
*  "LOGIC HERE
*  "cl_demo_output=>display( ls_flight ).
*  write: ls_flight-carrid, ls_flight-connid,
*                   ls_flight-fldate,
*                   ls_flight-price,
*                   ls_flight-seatsmax.
*endselect.


*DATA lt_sflight TYPE STANDARD TABLE OF sflight.
*
*SELECT *
*  FROM sflight
*  WHERE carrid IN ( 'DL', 'AA', 'AZ' )
*    AND fldate BETWEEN '20260101' AND '20261231' "YYYYMMDD
*  INTO TABLE @lt_sflight.
*
*IF sy-subrc = 0.
*  cl_demo_output=>display( lt_sflight ).
*ELSE.
*  MESSAGE 'No data' TYPE 'S' DISPLAY LIKE 'E'.
*ENDIF.


""" SAMPLE: AGGRATES - simple calculation
*TYPES: BEGIN OF ltys_flight,
*         carrid      TYPE sflight-carrid,
*         connid      TYPE sflight-connid,
*         fldate      TYPE sflight-fldate,
*         seatsmax    TYPE sflight-seatsmax,
*         seatsocc    TYPE sflight-seatsocc,
*         seats_avail TYPE i,
*       END OF ltys_flight.
*
*DATA lt_flights TYPE STANDARD TABLE OF ltys_flight.
*
*SELECT carrid,
*       connid,
*       fldate,
*       seatsmax,
*       seatsocc,
*       seatsmax - seatsocc AS seats_avail
*  FROM sflight
*  INTO TABLE @lt_flights.
*
*IF sy-subrc = 0.
*  cl_demo_output=>display( lt_flights ).
*
*ENDIF.



""" SAMPLE: AGGREGATES - CASE
TYPES: BEGIN OF ltys_flight,
         carrid     TYPE sflight-carrid,
         connid     TYPE sflight-connid,
         fldate     TYPE sflight-fldate,
         price      TYPE sflight-price,
         currency   TYPE sflight-currency,
         price_type TYPE string,
       END OF ltys_flight.

DATA lt_flights TYPE STANDARD TABLE OF ltys_flight.

SELECT  carrid,
  connid,
  fldate,
  price,
  currency,
  CASE WHEN price < 500 THEN 'CHEAP'
  WHEN price >= 500 AND price <= 1000 THEN 'AFFORDABLE'
  WHEN price > 1000 THEN 'EXPENSIVE'
  END AS price_type
  FROM sflight
  WHERE currency = 'USD'
  INTO TABLE @lt_flights.

IF sy-subrc = 0.
  cl_demo_output=>display( lt_flights ).
ENDIF.

