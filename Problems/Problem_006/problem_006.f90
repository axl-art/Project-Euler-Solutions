PROGRAM problem_006

    IMPLICIT NONE 

    INTEGER :: squared_sum = 0, sum_of_square = 0
    INTEGER :: i = 0, n = 100 
    INTEGER :: difference 

    INTEGER :: square_total_sum

    DO i = 0, n

        squared_sum = squared_sum + (i**2)
        sum_of_square = sum_of_square + i

    END DO

    square_total_sum = sum_of_square**2
    difference = ABS(square_total_sum - squared_sum)

    WRITE (*,*) "The difference is: ", difference

END PROGRAM
