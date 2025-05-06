*&---------------------------------------------------------------------*
*& Report Y_ABAP_DEMO_SELECT_JOIN
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT y_abap_demo_select_join.

SELECT  a~carrid,
        a~carrname,
        b~countryfr,
        b~cityfrom,
        b~countryto,
        b~cityto
  FROM scarr AS a
  INNER JOIN spfli AS b
    ON a~carrid = b~carrid
  WHERE a~carrid IN ( 'AA', 'UA' )
  INTO TABLE @DATA(lt_flight_sched).

IF sy-subrc = 0.
  cl_demo_output=>display( lt_flight_sched ).
ENDIF.

