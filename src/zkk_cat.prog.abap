*&---------------------------------------------------------------------*
*& Report zkk_cat
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zkk_cat NO STANDARD PAGE HEADING.

DATA: gv_hello TYPE string,
      gv_cat   TYPE string,
      gv_var1  TYPE string,
      gv_var2  TYPE string,
      gv_var3  TYPE string,
      gv_var4  TYPE string,
      gv_var5  TYPE string,
      gv_var6  TYPE string,
      gv_full  TYPE string.

gv_hello = 'Hello there'.
gv_cat = 'There is a cat'.


CONCATENATE gv_hello gv_cat INTO gv_full SEPARATED BY ', '.

WRITE: / gv_full.

TRANSLATE gv_full TO UPPER CASE.

WRITE: / gv_full.

SPLIT gv_hello AT space INTO gv_var1 gv_var2.
SPLIT gv_cat AT space INTO gv_var3 gv_var4 gv_var5 gv_var6.

CONCATENATE gv_var1 gv_var6 INTO gv_full separated by space.

WRITE: / gv_full.
