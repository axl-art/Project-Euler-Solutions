PROGRAM problem_002
    IMPLICIT NONE
    INTEGER :: n = 0
	!Initial conditions
    INTEGER :: summ = 2, first_t = 2, second_t = 1

    INTEGER :: temp 

    DO WHILE ( (first_t < 4000000))
       
	temp = first_t
        first_t= first_t+ second_t
        second_t= temp
        
        IF ( MOD(first_t, 2) .EQ. 0 ) THEN
            
            summ = summ + first_t
        
        END IF     

    END DO 

    WRITE (*,*) "The sum is ", summ    
END PROGRAM       
