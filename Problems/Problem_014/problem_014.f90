PROGRAM problem_014

    IMPLICIT NONE
    INTEGER(8) :: N, two
    INTEGER :: T_one, Term_n, Term_max, max
    INTEGER :: i
    
    !Conditions
    max = 0
    Term_max = 0
    T_one = 1e6
    two = 2

    DO i = 1, T_one
        N = i

        IF(MOD(N,two) == 0) THEN
            N = N/2
        ELSE
            N = 3*N + 1
        END IF

        Term_n = 1

        DO
            IF(MOD(N,two) == 0) THEN
                N = N / 2
            ELSE
                N = 3*N + 1
            END IF

            Term_n = Term_n + 1 

            IF(Term_n  .GT.  Term_max) THEN
                Term_max = Term_n
                max = i
            END IF

            IF (N == 1) EXIT
        END DO
    END DO

    WRITE(*,*) "The max term is: ", max
END PROGRAM