PROGRAM problem_010
    
    IMPLICIT NONE

    INTEGER(8) :: i, summ, current_p, current_i, sqrt_ind
    INTEGER :: maximum = 2000000

    summ = 5_8 
    current_p = 3_8
    current_i = 3_8
    sqrt_ind = INT(SQRT(REAL(current_i)))

    DO WHILE (maximum .GT. current_i)
        DO i = 2_8, sqrt_ind
            IF (MOD(current_i, i) .EQ. 0_8) THEN
            
                EXIT

            ELSE
                
            IF (i .EQ. sqrt_ind) THEN

                current_p = current_i
                summ = summ + current_p
            
            END IF
        
            END IF
        
        END DO

    END DO    

    WRITE (*,*) "The summation is: ", summ

END PROGRAM
