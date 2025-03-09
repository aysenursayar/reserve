CREATE PROCEDURE ResetSeatsAvailable
AS
BEGIN
    UPDATE Locations
    SET number_of_seats_available = total_number_of_seats;
END;

