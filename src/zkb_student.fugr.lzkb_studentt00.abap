*---------------------------------------------------------------------*
*    view related data declarations
*---------------------------------------------------------------------*
*...processing: ZKB_STUDENT.....................................*
DATA:  BEGIN OF STATUS_ZKB_STUDENT                   .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZKB_STUDENT                   .
CONTROLS: TCTRL_ZKB_STUDENT
            TYPE TABLEVIEW USING SCREEN '0001'.
*.........table declarations:.................................*
TABLES: *ZKB_STUDENT                   .
TABLES: ZKB_STUDENT                    .

* general table data declarations..............
  INCLUDE LSVIMTDT                                .
