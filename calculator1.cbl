IDENTIFICATION DIVISION.
PROGRAM-ID. Calcular.
AUTHOR. Ismael.
DATA DIVISION.
WORKING-STORAGE SECTION.
77 Num1 PIC 9 VALUE ZEROS.
77 Num2 PIC 9 VALUE ZEROS.
77 Result1 PIC 9(2)V9(2) VALUE ZEROS.
77 Result2 PIC 9(2)V9(2) VALUE ZEROS.
77 Result3 PIC 9(2)V9(2) VALUE ZEROS.
77 Result4 PIC S9(2)V9(2) VALUE ZEROS.
77 Result5 PIC 9(2)V9(2) VALUE ZEROS.
PROCEDURE DIVISION.
Inicio.
    DISPLAY "Dame el primer numero: "WITH NO ADVANCING
    ACCEPT Num1
    DISPLAY "Dame el segundo numero: "WITH NO ADVANCING
    ACCEPT Num2
    ADD Num1 Num2 GIVING Result3
    SUBTRACT Num1 FROM Num2 GIVING Result4
    MULTIPLY Num1 BY Num2 GIVING Result1
    DIVIDE Num1 INTO Num2 GIVING Result2
    COMPUTE Result5 = Num1 /2 * (Num2–7)
    DISPLAY "Resultado de la multiplicacion es: ", Result1
    DISPLAY "Resultado de la division es: ", Result2
    DISPLAY "Resultado de la suma es: ", Result3
    DISPLAY "Resultado de la resta es: ", Result4
    DISPLAY "Resultado de la expresion es: ", Result5
    STOP RUN.