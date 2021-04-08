PROGRAM problem_001
    IMPLICIT NONE
    INTEGER :: A = 0, sum = 0 

    Do A = 0, 999
        IF (MOD(A,3) .EQ. 0 .OR. MOD(A,5) .EQ. 0) THEN
            sum = sum + A
        END IF
    END DO
    
    WRITE(*,*) "The sum is: ", sum

END PROGRAM
