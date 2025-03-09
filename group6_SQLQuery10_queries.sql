-- The average number of monthly reserved seats for each landlord
SELECT la.landlord_ID,
	   AVG(b.number_of_monthly_reserved_seats) AS avg_reserved_seats
FROM Landlords AS la
JOIN Locations AS lo ON la.landlord_ID = lo.landlord_ID
JOIN Bills AS b ON la.landlord_ID = b.landlord_ID
GROUP BY la.landlord_ID
ORDER BY avg_reserved_seats DESC;


-- Reservation rates of locations month by month
SELECT location_ID, bill_date, total_number_of_seats, number_of_monthly_reserved_seats, 
	   CAST(number_of_monthly_reserved_seats AS DECIMAL(10,2)) / CAST(total_number_of_seats AS DECIMAL(10,2)) AS reservation_rate
FROM Bills AS b
JOIN Landlords AS la ON la.landlord_ID = b.landlord_ID
JOIN Locations AS lo ON lo.landlord_ID = b.landlord_ID
ORDER BY location_ID, bill_date;


--  Total rating of locations with the same total number of seats
SELECT location_ID, total_number_of_seats, number_of_monthly_reserved_seats, location_facility_rate, average_price_level_of_items, location_accessibility_rate,
		(location_facility_rate + average_price_level_of_items + location_accessibility_rate) AS location_total_rating
FROM Bills AS b
JOIN Landlords AS la ON b.landlord_ID = la.landlord_ID
JOIN Locations AS lo ON la.landlord_ID = lo.landlord_ID
WHERE MONTH(b.bill_date) = 12
ORDER BY total_number_of_seats, location_ID;


-- Possible revenue of landlord from locations included our system
SELECT 
    la.landlord_ID, lo.location_ID,
    CAST(AVG(b.number_of_monthly_reserved_seats) AS INT) AS avg_reserved_seats,
    CAST(AVG(lo.average_price_level_of_items) AS INT) AS avg_price_level,
    CAST((AVG(b.number_of_monthly_reserved_seats) * AVG(lo.average_price_level_of_items)) AS INT) AS total_revenue,
    lo.total_number_of_seats,
    CAST((lo.total_number_of_seats * AVG(lo.average_price_level_of_items * location_crowd_rate/10 * 30)) AS INT) AS possible_revenue_without_system
FROM Landlords AS la
JOIN Locations AS lo ON la.landlord_ID = lo.landlord_ID
JOIN Bills AS b ON la.landlord_ID = b.landlord_ID
GROUP BY lo.location_ID, lo.total_number_of_seats, la.landlord_ID;
	

-- Difference between the average monthly reserved seats for the locations in the Oak Street 
SELECT lo.street_name, lo.location_name, la.landlord_ID,
	   CAST(AVG(b.number_of_monthly_reserved_seats) AS INT) AS avg_monthly_reserved_seats
FROM Bills AS b 
JOIN Landlords AS la ON b.landlord_ID = la.landlord_ID
JOIN Locations AS lo ON lo.landlord_ID = b.landlord_ID
WHERE b.landlord_ID IN (SELECT lo.landlord_ID
						FROM Locations AS lo
						WHERE lo.street_name = 'Oak St')
GROUP BY lo.street_name, lo.location_ID, lo.location_name, la.landlord_ID;


-- Information of the landlord and their locations with the maximum total number of seats
SELECT la.landlord_name, la.landlord_surname, lo.location_name, lo.total_number_of_seats
FROM Landlords AS la
JOIN Locations AS lo ON  LO.landlord_ID = LA.landlord_ID
WHERE LO.location_ID IN (SELECT lo.location_ID
						 FROM Locations AS lo
						 WHERE lo.total_number_of_seats = (SELECT MAX(lo.total_number_of_seats) AS max_total_number_of_seats
														   FROM Locations AS lo))


-- Information of the owners and the locations in the Oak Street which also have total number of seats more than 5
SELECT la.landlord_ID, la.landlord_name, la.landlord_surname, lo.location_ID, lo.location_name
FROM Landlords AS la
JOIN Locations AS lo ON lo.landlord_ID = la.landlord_ID
WHERE EXISTS (
    SELECT 1
    FROM Locations AS lo
    WHERE lo.landlord_ID = la.landlord_ID
    AND lo.street_name = 'Oak St'
)
AND EXISTS (
    SELECT 1
    FROM Locations AS lo
    WHERE lo.landlord_ID = la.landlord_ID
    AND lo.total_number_of_seats > 5
);

-- Information of the deals made with a membership payment more than made with landlord who has an ID as 2004
SELECT a.admin_ID, a.admin_name, a.admin_surname, m.landlord_ID, m.membership_payment
FROM Admins AS a
JOIN makes_deal_with AS m ON m.admin_ID = a.admin_ID
WHERE membership_payment > ANY (SELECT membership_payment
								FROM makes_deal_with 
								WHERE landlord_ID = 2004)
ORDER BY a.admin_ID, m.landlord_ID;


-- Another deals made by the admin who had also made deals with landlords surnamed 'Bryant'
SELECT a.admin_ID, a.admin_name, a.admin_surname, m.landlord_ID, l.landlord_name, l.landlord_surname
FROM Admins AS a
JOIN makes_deal_with AS m ON m.admin_ID = a.admin_ID
JOIN Landlords AS l ON l.landlord_ID = m.landlord_ID
WHERE a.admin_ID = ANY (SELECT m.admin_ID
						FROM Landlords 
						JOIN makes_deal_with AS m ON m.landlord_ID = Landlords.landlord_ID
						WHERE landlord_surname = 'Bryant')
ORDER BY m.admin_ID, l.landlord_ID;


