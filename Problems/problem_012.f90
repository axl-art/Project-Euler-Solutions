PROGRAM problem_012
    
    IMPLICIT NONE   

    INTEGER :: index_, num_div, current_triangle, current_factors, i, j

    index_ = 1
    num_div = 0
    current_triangle = 0
    current_factors = 0  

    DO WHILE (num_div .LT. 500)

        current_triangle = 0 
        current_factors = 0 

        DO i = 0, index_

            current_triangle = current_triangle + i
       
        END DO

    DO j = 1, current_triangle
        IF (MOD(current_triangle, j) .EQ. 0) THEN
            current_factors = current_factors + 1
        END IF
    
    num_div = current_factors

    END DO

    index_ = index_ + 1 

    END DO

    WRITE (*,*) current_triangle

END PROGRAM
