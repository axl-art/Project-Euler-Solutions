PROGRAM problem_007

    IMPLICIT NONE
    INTEGER :: count_prime, count_division, index, result
    INTEGER :: i = 1, n = 6

    count_prime = 0
    count_division = 0
    index = 1 

    DO WHILE (count_prime .LT. n)
        DO i=1, index 
            IF(MOD(index,i) .NE. 0) THEN 
                    count_division = count_division + 1 
            END IF 
        END DO          
        
            IF(count_division .EQ. index - 2) THEN  
                count_prime = count_prime + 1 
                index = index + 1 
                count_division = 0 

            ELSE
                index = index + 1 
                count_division = 0

            END IF

    END DO 

    result = index - 1 
    WRITE (*,*) "The result is: ", result

END PROGRAM
