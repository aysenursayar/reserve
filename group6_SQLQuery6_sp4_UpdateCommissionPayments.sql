CREATE PROCEDURE UpdateCommissionPayments
AS
BEGIN
    UPDATE Bills
    SET payment_of_commissions = commission_fee * number_of_monthly_reserved_seats
    FROM Bills b
    JOIN makes_deal_with m ON b.landlord_ID = m.landlord_ID;
END;
