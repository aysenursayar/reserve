CREATE PROCEDURE UpdateReservationRate
AS
BEGIN
    UPDATE Locations
    SET location_reservation_rate = (
        SELECT AVG(r.reserv_rate)
        FROM Reservations r
        WHERE r.location_ID = Locations.location_ID
        GROUP BY r.location_ID
    );
END;
