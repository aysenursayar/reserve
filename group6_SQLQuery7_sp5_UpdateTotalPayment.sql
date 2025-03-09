CREATE PROCEDURE UpdateTotalPayment
AS
BEGIN
    UPDATE Bills
    SET total_payment = b.payment_of_commissions + m.membership_payment
    FROM Bills b
    JOIN makes_deal_with m ON b.landlord_ID = m.landlord_ID;
END;

