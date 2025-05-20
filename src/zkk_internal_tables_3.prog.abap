*&---------------------------------------------------------------------*
*& Report  ZKK_INTERNAL_TABLES_3
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT ZKK_INTERNAL_TABLES_3 NO STANDARD PAGE heading.

TYPES: BEGIN OF ty_student,
roll TYPE n length 3,
name TYPE C length 40,
age TYPE n length 3,
gender TYPE C,
END OF ty_student.

DATA: gs_student TYPE ty_student,
      gt_student TYPE TABLE OF ty_student.

START-OF-SELECTION.

gs_student-ROLL = 1.
gs_student-name = 'Ajay'.
gs_student-age = 15.
gs_student-GENDER = 'M'.
APPEND gs_student TO gt_student.
CLEAR gs_student.

gs_student-ROLL = 2.
gs_student-name = 'Anil'.
gs_student-age = 16.
gs_student-GENDER = 'M'.
APPEND gs_student TO gt_student.
CLEAR gs_student.

gs_student-ROLL = 3.
gs_student-name = 'Bharath'.
gs_student-age = 14.
gs_student-GENDER = 'M'.
APPEND gs_student TO gt_student.
CLEAR gs_student.

gs_student-ROLL = 4.
gs_student-name = 'Chetana'.
gs_student-age = 15.
gs_student-GENDER = 'F'.
APPEND gs_student TO gt_student.
CLEAR gs_student.

gs_student-ROLL = 5.
gs_student-name = 'Diana'.
gs_student-age = 16.
gs_student-GENDER = 'F'.
APPEND gs_student TO gt_student.
CLEAR gs_student.

gs_student-ROLL = 6.
gs_student-name = 'Ganga'.
gs_student-age = 13.
gs_student-GENDER = 'F'.
APPEND gs_student TO gt_student.
CLEAR gs_student.

gs_student-ROLL = 7.
gs_student-name = 'Harsha'.
gs_student-age = 14.
gs_student-GENDER = 'M'.
APPEND gs_student TO gt_student.
CLEAR gs_student.

END-OF-SELECTION.

WRITE: 'Total NUMBER OF records' COLOR 3.
DESCRIBE TABLE gt_student.
WRITE: / |Number of records: { sy-tfill }|.
skip 1.

write: 'Sorted by gender descending' color 3.
sort gt_student by gender descending.
LOOP AT gt_student INTO gs_student.
WRITE:  / |Roll: { gs_student-roll }|,
|Name: { gs_student-NAME }|,
|Age: { gs_student-AGE }|,
|Gender: { gs_student-GENDER }|.
SKIP 1.
ENDLOOP.

write: 'Sorted by age ascending' color 3.
sort gt_student by age ascending.
LOOP AT gt_student INTO gs_student.
WRITE:  / |Roll: { gs_student-roll }|,
|Name: { gs_student-NAME }|,
|Age: { gs_student-AGE }|,
|Gender: { gs_student-GENDER }|.
SKIP 1.
ENDLOOP.

write: 'Special sort' color 3.
sort gt_student by name age ascending.
LOOP AT gt_student INTO gs_student.
WRITE: / |Roll: { gs_student-roll }|,
|Name: { gs_student-NAME }|,
|Age: { gs_student-AGE }|,
|Gender: { gs_student-GENDER }|.
SKIP 1.
ENDLOOP.




.
