PROGRAM problem_004
    
    IMPLICIT NONE

    INTEGER :: n, m

    DO n = 999, 900, -1 
        DO m = 999, 900, -1
            IF (function_palindrome(n*m)) THEN
		
                WRITE(*,*) n*m
                EXIT

            END IF
        END DO
    END DO      
  

CONTAINS

    FUNCTION function_palindrome(k)

	IMPLICIT NONE

	LOGICAL :: function_palindrome
	INTEGER, INTENT(in) :: k
	INTEGER :: num, dig, reverse
	
	function_palindrome = .FALSE.
	num = k
	reverse = 0
	
	DO WHILE (num .GT. 0)
		dig = MOD(num, 10)
		reverse = reverse*10 + dig
		num = num/10
	END DO
	
	IF (reverse == k) function_palindrome = .TRUE.

    RETURN

    END FUNCTION

END PROGRAM      
