*&---------------------------------------------------------------------*
*& Report  ZKK_LIKP_UPDATE_TEST
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT ZKK_LIKP_UPDATE_TEST MESSAGE-ID ZMS_KK_TEST.
.

*----------------------------------------------------------------------*
* TABLES                                                               *
*----------------------------------------------------------------------*
TABLES: likp.
*----------------------------------------------------------------------*
* CONSTANTS                                                            *
*----------------------------------------------------------------------*
*CONSTANTS: c_act_vko_change(02)   VALUE '02'. "sales area change "@001
CONSTANTS: c_act_lgnum_change(02)   VALUE '02'. "warehouse change "@001
*----------------------------------------------------------------------*
* VARIABLES                                                            *
*----------------------------------------------------------------------*
DATA:  w_rcode      LIKE sy-subrc.            "internal returncode
*----------------------------------------------------------------------*
* SELECTION-SCREEN                                                     *
*----------------------------------------------------------------------*
SELECTION-SCREEN BEGIN OF BLOCK box_one WITH FRAME TITLE text-001.
SELECT-OPTIONS s_vbeln  FOR likp-vbeln NO INTERVALS NO-EXTENSION OBLIGATORY.
PARAMETER      p_vlstk LIKE likp-vlstk VALUE CHECK.
SELECTION-SCREEN END OF BLOCK box_one.
*----------------------------------------------------------------------*
* START-OF-SELECTION                                                   *
*----------------------------------------------------------------------*
START-OF-SELECTION.
* getting the delivery document from LIKP table
  PERFORM get_data.

* Check Authorities
  PERFORM check_authority.

  IF w_rcode = 0.
    PERFORM update_shipping.
  ELSE.
*<<<Begin of change @001
*    MESSAGE e000 WITH 'You have no authorization for Sales Org:'(002)
*                                                     likp-vkorg.
    MESSAGE e000 WITH 'You have no authorization for Warehouse:'(002)
                                                        likp-lgnum.


*>>>End of change @001
  ENDIF.
*----------------------------------------------------------------------*
* END-OF-SELECTION                                                     *
*----------------------------------------------------------------------*
END-OF-SELECTION.
*&---------------------------------------------------------------------*
*&      Form  GET_DATA
*&---------------------------------------------------------------------*
*       get data based on selection criteria
*----------------------------------------------------------------------*
FORM get_data .
  SELECT SINGLE * FROM likp WHERE vbeln IN s_vbeln.
  IF sy-subrc <> 0.
    MESSAGE s000 WITH 'Please enter a valid Delivery document'(004).

  ENDIF.

ENDFORM.                    " GET_DATA
*&---------------------------------------------------------------------*
*&      Form  UPDATE_SHIPPING
*&---------------------------------------------------------------------*
*   Update shipping point based on the value given on the value        *
*   given on selection screen                                          *
*----------------------------------------------------------------------*
FORM update_shipping .
  likp-vlstk = p_vlstk.
  UPDATE likp.
  IF sy-subrc = 0.
    MESSAGE i000 WITH 'Delivery updated for the Delivery document:'(003)
                                                         likp-vbeln.
  ENDIF.
ENDFORM.                    " UPDATE_SHIPPING
*&---------------------------------------------------------------------*
*&      Form  check_authority
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
FORM check_authority .
*   At least display must be allowed
*<<<Begin of change @001
**   Authority for sales area
*  AUTHORITY-CHECK OBJECT 'ZSD_AUTH'
*           ID 'VKORG' FIELD LIKP-VKORG
*           ID 'ACTVT' FIELD C_ACT_VKO_CHANGE.
*   Authority for Warehouse
* Begin of change @002
*  AUTHORITY-CHECK OBJECT 'ZSD_AUTH'
*           ID 'LGNUM' FIELD likp-lgnum
*           ID 'ACTVT' FIELD c_act_lgnum_change.

* Authority check for Warehouse
*  AUTHORITY-CHECK OBJECT 'ZWM_AUTH'
*           ID 'LGNUM' FIELD likp-lgnum
*           ID 'ACTVT' FIELD c_act_lgnum_change.

* End of change @002
*>>>End of change @001
*  w_rcode = sy-subrc.
w_rcode = 0.
ENDFORM.                    " check_authority
