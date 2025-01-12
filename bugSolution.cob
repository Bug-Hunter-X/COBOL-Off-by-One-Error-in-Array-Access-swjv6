MOVE 0 TO WS-COUNTER.

PERFORM VARYING WS-COUNTER FROM 1 BY 1 UNTIL WS-COUNTER > 10
    ADD 1 TO WS-SUM(WS-COUNTER)
END-PERFORM.

DISPLAY "The sum is: ", WS-SUM(10). 

Note: The declaration of WS-SUM needs to account for 11 elements to avoid this error.  For example:
01 WS-SUM PIC 9(5) OCCURS 11 TIMES.