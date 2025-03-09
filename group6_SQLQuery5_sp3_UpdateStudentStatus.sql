CREATE PROCEDURE UpdateStudentStatus
AS
BEGIN
    ;WITH ReservationCounts AS (
        SELECT s.student_ID, COUNT(r.student_ID) AS ReservationCount
        FROM Students s
        LEFT JOIN Reservations r ON r.student_ID = s.student_ID
        GROUP BY s.student_ID
    )
    UPDATE Students
    SET student_status = (
        SELECT ISNULL(ReservationCount, 0) / 3
        FROM ReservationCounts rc
        WHERE rc.student_ID = Students.student_ID
    )
    WHERE student_ID IN (SELECT student_ID FROM Reservations);
END;
