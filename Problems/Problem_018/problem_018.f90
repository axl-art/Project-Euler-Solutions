PROGRAM problem_018

    IMPLICIT NONE

    INTEGER :: triangle(1:15, 1:15)
    INTEGER :: i, j, k, temp
  
    OPEN(unit=1, file="problem_18.txt")

    DO i=1,15
        READ(1, *,iostat=k) triangle(i, 1:i)
    END DO
    
    CLOSE(1)

    DO i=14,1,-1
        DO j=1, i
            temp = max(triangle(i+1, j), triangle(i+1, j+1))
            triangle(i, j) = triangle(i, j) + temp
        END DO
    END DO

    WRITE(*,*) triangle(1, 1)

END PROGRAM