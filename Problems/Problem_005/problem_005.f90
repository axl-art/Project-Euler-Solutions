PROGRAM problem_005
    
    INTEGER :: i = 20, summation = 1, numerus
    !numerus is number in latin
    
    numerus =  i + 1 

    DO WHILE (summation .LT. i)
        DO j=1, (i-1)
            IF (MOD(numerus, j) .EQ. 0) THEN
                summation = summation + 1
            ELSE
                summation = 1 
            END IF
        END DO    

        numerus = numerus + 1  
    END DO

    WRITE(*,*) "The number is: ", (numerus-1)    

END PROGRAM 
