**&---------------------------------------------------------------------*
**& Report zkk_data_variables
**&---------------------------------------------------------------------*
**&
**&---------------------------------------------------------------------*
REPORT zkk_data_variables NO STANDARD PAGE HEADING.

*1. What is the maximum length a variable name can have?
* ANSWER: 30 CHARS

*2. What is the maximum length a parameter name can have?
* ANSWER: 8 CHARS

*3. Create two variables  one as integer and another as character. Initialize values as 10 and A respectively.
*Now, move character variable to integer variable and see what happens.

*DATA: lv_int  TYPE i,
*      lv_char TYPE c.
*
*lv_int = 10.
*lv_char = 'A'.

*lv_int = lv_char. " ABAP Error 'A' cannot be interpreted as a number.


*4. Create a report program to display arithmetic operation results in the output.
*Selscreen:
*Value 1  integer; mandatory
*Value 2  integer; mandatory
*Value 3  integer; mandatory
*Output:
*Sum = <addition of all 3 values from the selscreen>
*Difference = <subtract the first two, then the 3rd one>
*Multiplication = <multiply all three>
*Some calculation = <divide value1 by value2 and then add value3 to the division result>

PARAMETERS: lp_int1 TYPE i OBLIGATORY,
            lp_int2 TYPE i OBLIGATORY,
            lp_int3 TYPE i OBLIGATORY.

DATA: lv_answer TYPE p DECIMALS 2.

WRITE: |Parameter 1: { lp_int1 } |,
     / |Parameter 2: { lp_int2 } |,
     / |Parameter 3: { lp_int3 } |.

SKIP 1.

lv_answer = lp_int1 + lp_int2 + lp_int3.

WRITE: |Sum: { lv_answer } |.

lv_answer = lv_answer - ( lp_int1 + lp_int2 ).

WRITE: / |1st Subtraction (Total - (param 1 + param 2)): { lv_answer } |.

lv_answer = lv_answer - lp_int3.

WRITE: / |2nd Subtraction (Total - param 3): { lv_answer } |.

lv_answer = lp_int1 * lp_int2 * lp_int3.

WRITE: / |Multiplication: { lv_answer } |.

lv_answer = ( lp_int1 / lp_int2 ) + lp_int3.

WRITE: / |Some Calculation ((param 1 / param 2) + param 3): { lv_answer } |.

*5. Create a program as per the below requirement:
*Selscreen:
*Name of the Shop - 40 characters; lower case should also be allowed; mandatory
*Address - 80 characters; lower case should also be allowed; optional
*Pin Code - 6 numbers; mandatory; default to 500001
*Output:
*Shop Details:
*Shop Name: <data from selscreen>
*Shop Address: <data from selscreen>
*Pin Code: <data from selscreen>

*PARAMETERS: lp_s_nam TYPE c LENGTH 40 LOWER CASE OBLIGATORY,
*            lp_addrs TYPE c LENGTH 80 LOWER CASE,
*            lp_pin   TYPE n LENGTH 6 OBLIGATORY DEFAULT 500001.
*
*
*WRITE: |Shop Details:| color 3,
*     / |Shop Name: { lp_s_nam } |,
*     / |Address: { lp_addrs } |,
*     / |Pin Code: { lp_pin } |.

