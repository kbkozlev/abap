*---------------------------------------------------------------------*
*    view related data declarations
*---------------------------------------------------------------------*
*...processing: ZKB_SCORE.......................................*
DATA:  BEGIN OF STATUS_ZKB_SCORE                     .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZKB_SCORE                     .
CONTROLS: TCTRL_ZKB_SCORE
            TYPE TABLEVIEW USING SCREEN '0001'.
*.........table declarations:.................................*
TABLES: *ZKB_SCORE                     .
TABLES: ZKB_SCORE                      .

* general table data declarations..............
  INCLUDE LSVIMTDT                                .
