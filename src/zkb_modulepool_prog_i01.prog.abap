*&---------------------------------------------------------------------*
*&  Include           ZKB_MODULEPOOL_PROG_I01
*&---------------------------------------------------------------------*

*&---------------------------------------------------------------------*
*&      Module  USER_COMMAND_0100  INPUT
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
MODULE user_command_0100 INPUT.

  CASE sy-ucomm.
    WHEN 'BACK'.
      LEAVE TO SCREEN 0.
    WHEN 'EXIT' OR 'CANCEL'.
      LEAVE PROGRAM.
    WHEN 'M_CRT'.
    WHEN 'M_CHG'.
    WHEN OTHERS.
  ENDCASE.

ENDMODULE.                 " USER_COMMAND_0100  INPUT
