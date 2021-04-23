PROGRAM problem_009
    
	IMPLICIT NONE
 	
 	INTEGER :: a = 0, b = 0, c = 0
	INTEGER :: prod = 1

  DO a = 1, 1000
    
    IF ( MOD(1000*(-500 + a), (-1000 + a)) .EQ. 0 ) THEN

      b = 1000*(-500+a) / (-1000 + a)
      c = 1000 - (a + b)

      WRITE (*,*) "a: ", a
      WRITE (*,*) "b: ", b
      WRITE (*,*) "c: ", c

      IF ((a + b + c) .EQ. 1000) THEN

        WRITE (*,*) "Accomplished!"
       
        prod = a * b * c
       
        WRITE (*,*) "the product is: ", prod

        STOP

      END IF

    END IF
  END DO     

END PROGRAM
