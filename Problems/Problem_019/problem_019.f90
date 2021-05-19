PROGRAM problem_019

    IMPLICIT NONE

    INTEGER :: weekday, day, month, year, num
    INTEGER :: days_month(1:12) = (/31,28,31,30,31,30,31,31,30,31,30,31/)
    LOGICAL :: leap

    weekday = 2
    day = 1
    month = 1
    year = 1900

    num = 0
    leap = .FALSE.

    IF(MOD(year,100) == 0) THEN
        IF(MOD(year,400) == 0) THEN
            leap = .TRUE.
        END IF
    ELSE IF (MOD(year,4) == 0) THEN
        leap = .TRUE.
    END IF

    DO
        weekday = weekday + 1
        day = day + 1

        IF(weekday .GT. 7) weekday = 1

        IF (day .GT. days_month(month)) THEN
            month = month + 1
            day = 1
            IF(month .GT. 12) THEN
                year = year + 1
                month = 1
            END IF
        END IF

            IF(day == 1 .AND. month == 1 .and. year == 1901) THEN
                num = 0
            END IF

            add_suundays: IF(day == 1 .AND. weekday == 1) THEN
                num = num + 1
            END IF add_suundays

            IF (day == 1 .AND. month == 1 .AND. year == 2001) THEN
                EXIT
            END IF
    END DO

        print *, "Num sundays", num

END PROGRAM