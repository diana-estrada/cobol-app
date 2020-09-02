      ******************************************************************
      * Author: SimpleWalker
      * Date: 06/07/2020
      * Purpose: Calculator
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. COBOLCalc.
	   DATA DIVISION.
	   FILE SECTION.
       WORKING-STORAGE SECTION.
           01 num1 PIC 9(4).
           01 num2 PIC 9(4).
           01 total PIC 9(8).
           01 opt PIC X.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "COBOL Calculator"
           DISPLAY " ".
           DISPLAY "Use enter key after each element: "
           DISPLAY "Number:"
           ACCEPT total

           PERFORM UNTIL opt = "="

               EVALUATE TRUE
                   WHEN opt = "="
                       DISPLAY "Total:"
                   WHEN opt = "+"
                       COMPUTE total = total + num1
                   WHEN opt = "-"
                       COMPUTE total = total - num1
                   WHEN opt = "*"
                       COMPUTE total = total * num1
                   WHEN opt = "/"
                       COMPUTE total = total / num1
                   WHEN OTHER
                       DISPLAY "Invaild opt"
               END-EVALUATE

               DISPLAY "Opt:"
               ACCEPT opt

               IF opt = "+" OR opt = "-" OR opt = "*" OR opt = "/"
                   DISPLAY "Number:"
                   ACCEPT num1
               END-IF

           END-PERFORM

           DISPLAY total.

       STOP RUN.
       END PROGRAM COBOLCalc.