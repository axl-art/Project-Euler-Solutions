PROGRAM problem_011

    IMPLICIT NONE

    INTEGER :: grid(1:20, 1:20)
    INTEGER :: product(4), var_max
    INTEGER :: vertical(1:17, 1:20), horizontal(1:20, 1:17)
    INTEGER :: diagonal_1(1:17, 1:17), diagonal_2(1:17, 1:17)
    INTEGER :: i, j

    OPEN(unit=1, file="problem_011.txt")
    READ(1, *) ((grid(i,j) , i = 1, 20), j = 1, 20)
    CLOSE(1)

    1 FORMAT(I3,I3,I3,I3,I3,I3,I3,I3,I3,I3,I3,I3,I3,I3,I3,I3,I3,I3,I3,I3)

    vertical = grid(1:17,1:20) * grid(2:18,1:20) * grid(3:19,1:20) * grid(4:20,1:20)
    horizontal = grid(1:20,1:17) * grid(1:20,2:18) * grid(1:20,3:19) * grid(1:20,4:20)
    diagonal_1 = grid(1:17,1:17) * grid(2:18,2:18) * grid(3:19,3:19) * grid(4:20,4:20)
    diagonal_2 = grid(4:20,1:17) * grid(3:19,2:18) * grid(2:18,3:19) * grid(1:17,4:20)

    var_max = max(maxval(vertical), maxval(horizontal), maxval(diagonal_1), maxval(diagonal_2))

    WRITE(*,*) "The max value is: ", var_max

END PROGRAM