CREATE PROCEDURE ProduceMonthlyLandlordReports
    @landlordID VARCHAR (30),
    @month INT,
    @year INT
AS
BEGIN
    SELECT l.landlord_ID, l.landlord_name, l.landlord_surname, l.landlord_email, b.bill_date,b.number_of_monthly_reserved_seats, b.total_payment
    FROM Bills AS b
	JOIN Landlords AS l ON l.landlord_ID = b.landlord_ID
    WHERE b.landlord_ID = @landlordID
    AND MONTH(b.bill_date) = @month
    AND YEAR(b.bill_date) = @year
    ORDER BY l.landlord_ID;
END