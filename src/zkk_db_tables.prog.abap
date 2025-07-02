*&---------------------------------------------------------------------*
*& Report  ZKK_DB_TABLES
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT ZKK_DB_TABLES.

data: wa_prop type ZKK_PROPERTY,
      it_prop type table of ZKK_PROPERTY.

wa_prop-ROLLNO = 001.
wa_prop-PTYPE = 'HOUSE'.
wa_prop-PNAME = '1st House on the Map'.
wa_prop-CAPACITY = 4.
wa_prop-CURR_KEY = 'BGN'.
wa_prop-PRICE = 400.

append wa_prop to IT_PROP.
clear wa_prop.

wa_prop-ROLLNO = 002.
wa_prop-PTYPE = 'HOUSE'.
wa_prop-PNAME = 'House on top of the Hill'.
wa_prop-CAPACITY = 10.
wa_prop-CURR_KEY = 'BGN'.
wa_prop-PRICE = 1000.

append wa_prop to IT_PROP.
clear wa_prop.

wa_prop-ROLLNO = 003.
wa_prop-PTYPE = 'APARTMENT'.
wa_prop-PNAME = 'A Part Mental'.
wa_prop-CAPACITY = 3.
wa_prop-CURR_KEY = 'BGN'.
wa_prop-PRICE = 700.

append wa_prop to IT_PROP.
clear wa_prop.

wa_prop-ROLLNO = 004.
wa_prop-PTYPE = 'APARTMENT'.
wa_prop-PNAME = 'Apart but still together'.
wa_prop-CAPACITY = 2.
wa_prop-CURR_KEY = 'BGN'.
wa_prop-PRICE = 600.

append wa_prop to IT_PROP.
clear wa_prop.

wa_prop-ROLLNO = 005.
wa_prop-PTYPE = 'VILLA'.
wa_prop-PNAME = 'Mambo Nr. 5'.
wa_prop-CAPACITY = 5.
wa_prop-CURR_KEY = 'BGN'.
wa_prop-PRICE = 555.

append wa_prop to IT_PROP.
clear wa_prop.

modify ZKK_PROPERTY from table it_prop.

IF sy-subrc EQ 0.
  MESSAGE 'All good' TYPE 'S'.
ELSE.
  MESSAGE 'Bad' TYPE 'E'.
ENDIF.



.
