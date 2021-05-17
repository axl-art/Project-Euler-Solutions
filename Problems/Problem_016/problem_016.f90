PROGRAM problem_016

    IMPLICIT NONE

    INTEGER :: i, j, k, carry
    INTEGER :: summ(1:500)

    DO i = 1, 500

     summ(i) = 0
    
    END DO

    summ(1) = 1

    DO i=1,1000

        k = 0
        carry = 0

        DO j=1,500
            
            k = summ(j) + summ(j) + carry
            
            IF (k .GT. 9) THEN
            
               summ(j) = mod(k, 10)
            
            ELSE
            
               summ(j) = k
            
            END IF
            
            carry = k / 10
        
        END DO
    END DO

    k = 0
    
    DO i=1,500

        k = k + summ(i)

    END DO

    WRITE(*,*) "the sum is: ", k

END PROGRAM