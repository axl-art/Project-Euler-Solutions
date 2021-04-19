PROGRAM problem_003
	
	IMPLICIT NONE
  
	INTEGER(8) :: up_int, i, n = 600851475143_8
  	DOUBLE PRECISION :: real = 600851475143D+0
  	REAL :: up_real
  
	up_real = SQRT(real)
  	up_int = INT(up_real)

  	DO i=3, up_int
   		DO WHILE (mod(n, i) .EQ. 0)
      			WRITE (*,*) "The number is divisible by: ", i
      			n = n / i
    		END DO
  	END DO
        
END PROGRAM
