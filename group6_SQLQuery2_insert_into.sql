INSERT INTO Admins (admin_ID, admin_name, admin_surname, admin_password, admin_email)
VALUES
    (1000, 'John', 'Doe', '1037867764', 'john.doe@reservestudy.com'),
    (1001, 'Jane', 'Smith', '4587390654', 'jane.smith@reservestudy.com'),
    (1002, 'Alice', 'Johnson', '3247689540', 'alice.johnson@reservestudy.com'),
    (1003, 'Bob', 'Williams', '1548796576', 'bob.williams@reservestudy.com'),
    (1004, 'Eve', 'Taylor', '0730816395', 'eve.taylor@reservestudy.com');

INSERT INTO Landlords (landlord_ID, landlord_name, landlord_surname, landlord_password, landlord_email, landlord_telephone_number)
VALUES
    (2000, 'Robert', 'Johnson', 'pass123', 'robert.johnson@example.com', '533-876-8594'),
    (2001, 'Sarah', 'Smith', 'pass456', 'sarah.smith@example.com', '546-545-4499'),
    (2002, 'David', 'Williams', 'pass789', 'david.williams@example.com', '555-123-4567'),
    (2003, 'Emily', 'Taylor', 'passabc', 'emily.taylor@example.com', '554-222-3333'),
    (2004, 'Michael', 'Brown', 'passdef', 'michael.brown@example.com', '999-888-7777'),
    (2005, 'Jessica', 'Clark', 'passmno', 'jessica.clark@example.com', '333-222-1111'),
    (2006, 'Brian', 'Hill', 'passpqr', 'brian.hill@example.com', '777-999-8888'),
    (2007, 'Ashley', 'Ward', 'passtu', 'ashley.ward@example.com', '111-444-5555'),
    (2008, 'Kevin', 'Cook', 'passvwx', 'kevin.cook@example.com', '999-111-3333'),
    (2009, 'Natalie', 'Perry', 'passyz', 'natalie.perry@example.com', '555-666-7777'),
    (2010, 'Christopher', 'Fisher', 'pass456', 'christopher.fisher@example.com', '123-987-6543'),
    (2011, 'Rachel', 'Barnes', 'pass789', 'rachel.barnes@example.com', '987-654-3210'),
    (2012, 'Justin', 'Hudson', 'passabc', 'justin.hudson@example.com', '111-222-3333'),
    (2013, 'Megan', 'Cole', 'passdef', 'megan.cole@example.com', '999-878-7777'),
	(2014, 'Sharon', 'Bryant', 'passghi', 'sharon.bryant@example.com', '444-657-6666'),
    (2015, 'Kelly', 'Fleming', 'passjkl', 'kelly.fleming@example.com', '777-545-9999'),
    (2016, 'Jesse', 'Gomez', 'passmno', 'jesse.gomez@example.com', '333-212-1111'),
    (2017, 'Aaron', 'Bryant', 'passghi', 'aaron.bryant@example.com', '444-555-6666'),
    (2018, 'Ryan', 'Fleming', 'passjkl', 'ryan.fleming@example.com', '777-888-9999'),
	(2019, 'Olivia', 'Davis', 'passghi', 'olivia.davis@example.com', '444-777-6666');
	
INSERT INTO Locations (location_ID, landlord_ID, location_name, street_name, gate_no, total_number_of_seats, location_crowd_rate, average_price_level_of_items, location_facility_rate , location_accessibility_rate)
VALUES
    ('L001', 2000, 'Caf� Bella', 'Main St', '123', 6, 7.50, 20.00, 8.5, 6.5),
    ('L002', 2001, 'The Oak Lounge', 'Oak St', '456', 3, 6.50, 15.00, 7.2, 6.5),
    ('L003', 2002, 'Pine Delights', 'Pine St', '789', 7, 8.00, 25.00, 9.0, 6.5),
    ('L004', 2003, 'Elm Eats', 'Elm St', '101', 4, 7.00, 18.00, 8.0, 6.5),
    ('L005', 2004, 'Birch Bistro', 'Birch St', '202', 5, 7.80, 22.00, 8.8, 6.5),
    ('L006', 2005, 'Maple Munchies', 'Maple St', '303', 4, 6.00, 12.00, 6.5, 6.5),
    ('L007', 2006, 'Cedar Caf�', 'Cedar St', '404', 4, 8.50, 30.00, 9.5, 6.5),
    ('L008', 2007, 'Nutty Walnut', 'Walnut St', '505', 7, 5.00, 10.00, 5.5, 6.5),
    ('L009', 2008, 'Sycamore Sips', 'Sycamore St', '606', 5, 7.20, 17.00, 7.8, 6.5),
    ('L010', 2009, 'Redwood Retreat', 'Redwood St', '707', 5, 6.80, 19.00, 7.2, 6.5),
    ('L011', 2010, 'Chestnut Corner', 'Chestnut St', '808', 3, 6.90, 21.00, 7.9, 6.5),
    ('L012', 2011, 'Cedar Bites', 'Cedar St', '909', 4, 5.80, 14.00, 6.8, 6.5),
    ('L013', 2012, 'Pine Place', 'Pine St', '1010', 5, 7.70, 23.00, 7.7, 6.5),
    ('L014', 2013, 'Elm Eats', 'Elm St', '1111', 4, 6.40, 16.00, 7.4, 6.5),
    ('L015', 2014, 'Maple Munchies', 'Maple St', '1212', 6, 7.30, 18.50, 8.3, 6.5),
    ('L016', 2015, 'Oak Oasis', 'Oak St', '1313', 7, 6.40, 19.50, 7.6, 6.5),
    ('L017', 2016, 'Birch Bistro', 'Birch St', '1414', 7, 6.20, 27.00, 9.2, 6.5),
    ('L018', 2017, 'Nutty Walnut', 'Walnut St', '1515', 6, 5.80, 13.00, 6.5, 6.5),
    ('L019', 2018, 'Sycamore Sips', 'Sycamore St', '1616', 3, 7.40, 20.50, 8.1, 6.5),
    ('L020', 2019, 'Redwood Retreat', 'Redwood St', '1717', 5, 6.00, 22.50, 7.7, 6.5);



INSERT INTO makes_deal_with (landlord_ID, admin_ID, membership_payment, commission_fee, contract_no, contract_time)
VALUES
    (2000, 1000, 500.00, 2.00, 'Contract 1', '09:30:00'),
    (2001, 1001, 600.00, 2.00, 'Contract 2', '10:15:00'),
    (2002, 1002, 550.00, 2.00, 'Contract 3', '11:00:00'),
    (2003, 1003, 700.00, 2.00, 'Contract 4', '11:45:00'),
    (2004, 1002, 800.00, 2.00, 'Contract 5', '12:30:00'),
    (2005, 1001, 750.00, 2.00, 'Contract 6', '13:15:00'),
    (2006, 1002, 900.00, 2.00, 'Contract 7', '14:00:00'),
    (2007, 1003, 850.00, 2.00, 'Contract 8', '14:45:00'),
    (2008, 1001, 950.00, 2.00, 'Contract 9', '15:30:00'),
    (2009, 1002, 1000.00, 2.00, 'Contract 10', '09:00:00'),
    (2010, 1004, 550.00, 2.00, 'Contract 11', '09:45:00'),
    (2011, 1000, 600.00, 2.00, 'Contract 12', '10:30:00'),
    (2012, 1002, 400.00, 2.00, 'Contract 13', '11:15:00'),
    (2013, 1002, 900.00, 2.00, 'Contract 14', '12:45:00'),
    (2014, 1001, 500.00, 2.00, 'Contract 15', '13:30:00'),
    (2015, 1000, 600.00, 2.00, 'Contract 16', '14:15:00'),
    (2016, 1004, 700.00, 2.00, 'Contract 17', '15:00:00'),
    (2017, 1002, 800.00, 2.00, 'Contract 18', '15:45:00'),
    (2018, 1000, 700.00, 2.00, 'Contract 19', '16:30:00'),
    (2019, 1004, 800.00, 2.00, 'Contract 20', '16:15:00');


INSERT INTO Students (student_ID, student_name, student_surname, student_email, student_password)
VALUES
    ('S100001', 'Alice', 'Johnson', 'alice.johnson@example.com', 'pass123'),
    ('S100002', 'Bob', 'Williams', 'bob.williams@example.com', 'pass456'),
    ('S100003', 'Charlie', 'Smith', 'charlie.smith@example.com', 'pass789'),
    ('S100004', 'David', 'Miller', 'david.miller@example.com', 'passabc'),
    ('S100005', 'Emily', 'Jones', 'emily.jones@example.com', 'passdef'),
    ('S100006', 'Frank', 'Davis', 'frank.davis@example.com', 'passghi'),
    ('S100007', 'Grace', 'Taylor', 'grace.taylor@example.com', 'passjkl'),
    ('S100008', 'Henry', 'Clark', 'henry.clark@example.com', 'passmno'),
    ('S100009', 'Ivy', 'Moore', 'ivy.moore@example.com', 'passpqr'),
    ('S100010', 'Jack', 'White', 'jack.white@example.com', 'passstu'),
    ('S100011', 'Katie', 'Hall', 'katie.hall@example.com', 'passvwx'),
    ('S100012', 'Leo', 'Anderson', 'leo.anderson@example.com', 'passyz'),
    ('S100013', 'Mia', 'Brown', 'mia.brown@example.com', 'pass123'),
    ('S100014', 'Noah', 'Young', 'noah.young@example.com', 'pass456'),
    ('S100015', 'Olivia', 'Green', 'olivia.green@example.com', 'pass789'),
    ('S100016', 'Peter', 'Carter', 'peter.carter@example.com', 'passabc'),
    ('S100017', 'Quinn', 'Baker', 'quinn.baker@example.com', 'passdef'),
    ('S100018', 'Riley', 'Cooper', 'riley.cooper@example.com', 'passghi'),
    ('S100019', 'Sophia', 'Ward', 'sophia.ward@example.com', 'passjkl'),
    ('S100020', 'Thomas', 'Fisher', 'thomas.fisher@example.com', 'passmno');


INSERT INTO Reservations (booking_ID, student_ID, location_ID, reserv_start_time, reserv_end_time, reserv_rate, reserv_comment)
VALUES
    ('B10001', 'S100001', 'L001', '14:00:00', '16:00:00', 8.00, 'I loved this place! Great atmosphere for studying.'),
    ('B10002', 'S100002', 'L002', '10:00:00', '12:00:00', 7.50, 'Nice spot, but a bit noisy for my taste.'),
    ('B10003', 'S100003', 'L013', '16:00:00', '18:00:00', 9.50, 'Amazing study session with friends, very comfortable.'),
    ('B10004', 'S100004', 'L004', '12:00:00', '14:00:00', 8.50, 'Good place, but it gets crowded during lunchtime.'),
    ('B10005', 'S100005', 'L005', '08:00:00', '10:00:00', 6.00, 'Not my favorite, too early and quiet for me.'),
    ('B10006', 'S100006', 'L006', '18:00:00', '20:00:00', 9.00, 'Enjoyed the discussion group, will come back!'),
    ('B10007', 'S100007', 'L017', '14:00:00', '16:00:00', 8.00, 'Great for team project meetings, comfortable seating.'),
    ('B10008', 'S100008', 'L008', '10:00:00', '12:00:00', 7.50, 'Good for individual study, but could use better lighting.'),
    ('B10009', 'S100009', 'L009', '16:00:00', '18:00:00', 9.00, 'Group study session was productive, excellent facilities.'),
    ('B10010', 'S100010', 'L010', '12:00:00', '14:00:00', 9.00, 'Project discussion went well, liked the quiet environment.'),
    ('B10011', 'S100011', 'L001', '14:00:00', '16:00:00', 8.00, 'I did not enjoy the place much, too crowded for my liking.'),
    ('B10012', 'S100012', 'L002', '10:00:00', '12:00:00', 7.50, 'Individual study session went smoothly, comfortable chairs.'),
    ('B10013', 'S100013', 'L013', '16:00:00', '18:00:00', 9.50, 'Group study session was great, good atmosphere.'),
    ('B10014', 'S100014', 'L004', '12:00:00', '14:00:00', 8.50, 'Project discussion was challenging, but the environment was good.'),
    ('B10015', 'S100015', 'L005', '08:00:00', '10:00:00', 6.00, 'Morning study session was peaceful, loved the early start.'),
    ('B10016', 'S100016', 'L006', '18:00:00', '20:00:00', 9.00, 'Discussion group was lively, great discussions happened.'),
    ('B10017', 'S100017', 'L017', '14:00:00', '16:00:00', 8.00, 'Team project meeting went well, liked the collaborative space.'),
    ('B10018', 'S100018', 'L008', '10:00:00', '12:00:00', 7.50, 'Individual study session was productive, decent ambiance.'),
    ('B10019', 'S100019', 'L019', '16:00:00', '18:00:00', 9.00, 'Group study session was effective, facilities were good.'),
    ('B10020', 'S100020', 'L010', '12:00:00', '14:00:00', 9.00, 'Project discussion was successful, comfortable space.'),
	('B10021', 'S100001', 'L001', '14:00:00', '16:00:00', 8.00, 'The atmosphere was fantastic, a perfect spot for focused study.'),
    ('B10022', 'S100002', 'L012', '10:00:00', '12:00:00', 7.50, 'Nice environment, but the Wi-Fi was a bit slow.'),
    ('B10023', 'S100003', 'L003', '16:00:00', '18:00:00', 9.50, 'Great place for a group study session, comfortable seating.'),
    ('B10024', 'S100004', 'L004', '12:00:00', '14:00:00', 8.50, 'Good ambiance, but the lighting could be improved.'),
    ('B10025', 'S100005', 'L005', '08:00:00', '10:00:00', 6.00, 'Early morning session, peaceful and productive.'),
    ('B10026', 'S100006', 'L006', '18:00:00', '20:00:00', 9.00, 'The discussion group went well, comfortable space for interaction.'),
    ('B10027', 'S100007', 'L007', '14:00:00', '16:00:00', 8.00, 'Team project meeting was successful, good facilities.'),
    ('B10028', 'S100008', 'L008', '10:00:00', '12:00:00', 7.50, 'Individual study session was quiet and focused.'),
    ('B10029', 'S100009', 'L009', '16:00:00', '18:00:00', 9.00, 'Effective group study session, well-equipped location.'),
    ('B10030', 'S100010', 'L010', '12:00:00', '14:00:00', 9.00, 'Project discussion was productive, liked the collaborative environment.'),
    ('B10031', 'S100011', 'L001', '14:00:00', '16:00:00', 8.00, 'A bit crowded, but the energy was good.'),
    ('B10032', 'S100012', 'L002', '10:00:00', '12:00:00', 7.50, 'Individual study session was comfortable and quiet.'),
    ('B10033', 'S100001', 'L003', '16:00:00', '18:00:00', 9.50, 'Group study session went smoothly, enjoyed the collaborative atmosphere.'),
    ('B10034', 'S100009', 'L004', '12:00:00', '14:00:00', 8.50, 'Project discussion was challenging, but the environment was stimulating.'),
    ('B10035', 'S100015', 'L005', '08:00:00', '10:00:00', 6.00, 'Morning study session was calm, loved the early hours.'),
    ('B10036', 'S100009', 'L016', '18:00:00', '20:00:00', 9.00, 'Discussion group was engaging, liked the diverse perspectives.'),
    ('B10037', 'S100007', 'L007', '14:00:00', '16:00:00', 8.00, 'Team project meeting went well, collaborative space was useful.'),
    ('B10038', 'S100009', 'L008', '10:00:00', '12:00:00', 7.50, 'Individual study session was focused, could use more natural light.'),
    ('B10039', 'S100010', 'L009', '16:00:00', '18:00:00', 9.00, 'Group study session was efficient, facilities met our needs.'),
    ('B10040', 'S100009', 'L010', '12:00:00', '14:00:00', 9.00, 'Project discussion was successful, comfortable space for collaboration.');


INSERT INTO Bills (bill_ID, landlord_ID, bill_date, number_of_monthly_reserved_seats, membership_payment)
VALUES
    ('BL10001', '2000', '2023-12-01', 148, (SELECT membership_payment FROM makes_deal_with WHERE landlord_ID = '2000')),
    ('BL10002', '2001', '2023-12-02', 65, (SELECT membership_payment FROM makes_deal_with WHERE landlord_ID = '2001')),
    ('BL10003', '2002', '2023-12-03', 170, (SELECT membership_payment FROM makes_deal_with WHERE landlord_ID = '2002')),
    ('BL10004', '2003', '2023-12-04', 79, (SELECT membership_payment FROM makes_deal_with WHERE landlord_ID = '2003')),
    ('BL10005', '2004', '2023-12-05', 125, (SELECT membership_payment FROM makes_deal_with WHERE landlord_ID = '2004')),
    ('BL10006', '2005', '2023-12-06', 92, (SELECT membership_payment FROM makes_deal_with WHERE landlord_ID = '2005')),
    ('BL10007', '2006', '2023-12-07', 108, (SELECT membership_payment FROM makes_deal_with WHERE landlord_ID = '2006')),
    ('BL10008', '2007', '2023-12-08', 128, (SELECT membership_payment FROM makes_deal_with WHERE landlord_ID = '2007')),
    ('BL10009', '2008', '2023-12-09', 123,  (SELECT membership_payment FROM makes_deal_with WHERE landlord_ID = '2008')),
    ('BL10010', '2009', '2023-12-10', 120,  (SELECT membership_payment FROM makes_deal_with WHERE landlord_ID = '2009')),
    ('BL10011', '2010', '2023-12-11', 70,  (SELECT membership_payment FROM makes_deal_with WHERE landlord_ID = '2010')),
    ('BL10012', '2011', '2023-12-12', 85, (SELECT membership_payment FROM makes_deal_with WHERE landlord_ID = '2011')),
    ('BL10013', '2012', '2023-12-13', 112, (SELECT membership_payment FROM makes_deal_with WHERE landlord_ID = '2012')),
    ('BL10014', '2013', '2023-12-14', 93, (SELECT membership_payment FROM makes_deal_with WHERE landlord_ID = '2013')),
    ('BL10015', '2014', '2023-12-15', 154, (SELECT membership_payment FROM makes_deal_with WHERE landlord_ID = '2014')),
    ('BL10016', '2015', '2023-12-16', 147, (SELECT membership_payment FROM makes_deal_with WHERE landlord_ID = '2015')),
    ('BL10017', '2016', '2023-12-17', 150, (SELECT membership_payment FROM makes_deal_with WHERE landlord_ID = '2016')),
    ('BL10018', '2017', '2023-12-18', 117, (SELECT membership_payment FROM makes_deal_with WHERE landlord_ID = '2017')),
    ('BL10019', '2018', '2023-12-19', 80, (SELECT membership_payment FROM makes_deal_with WHERE landlord_ID = '2018')),
    ('BL10020', '2019', '2023-12-20', 105, (SELECT membership_payment FROM makes_deal_with WHERE landlord_ID = '2019')),
    ('BL10021', '2000', '2024-01-01', 154, (SELECT membership_payment FROM makes_deal_with WHERE landlord_ID = '2000')),
    ('BL10022', '2001', '2024-01-02', 70, (SELECT membership_payment FROM makes_deal_with WHERE landlord_ID = '2001')),
    ('BL10023', '2002', '2024-01-03', 175, (SELECT membership_payment FROM makes_deal_with WHERE landlord_ID = '2002')),
    ('BL10024', '2003', '2024-01-04', 84, (SELECT membership_payment FROM makes_deal_with WHERE landlord_ID = '2003')),
    ('BL10025', '2004', '2024-01-05', 132, (SELECT membership_payment FROM makes_deal_with WHERE landlord_ID = '2004')),
    ('BL10026', '2005', '2024-01-06', 100, (SELECT membership_payment FROM makes_deal_with WHERE landlord_ID = '2005')),
    ('BL10027', '2006', '2024-01-07', 115, (SELECT membership_payment FROM makes_deal_with WHERE landlord_ID = '2006')),
    ('BL10028', '2007', '2024-01-08', 120, (SELECT membership_payment FROM makes_deal_with WHERE landlord_ID = '2007')),
    ('BL10029', '2008', '2024-01-09', 125, (SELECT membership_payment FROM makes_deal_with WHERE landlord_ID = '2008')),
    ('BL10030', '2009', '2024-01-10', 130, (SELECT membership_payment FROM makes_deal_with WHERE landlord_ID = '2009')),
    ('BL10031', '2010', '2024-01-11', 78, (SELECT membership_payment FROM makes_deal_with WHERE landlord_ID = '2010')),
    ('BL10032', '2011', '2024-01-12', 97, (SELECT membership_payment FROM makes_deal_with WHERE landlord_ID = '2011')),
    ('BL10033', '2012', '2024-01-13', 120, (SELECT membership_payment FROM makes_deal_with WHERE landlord_ID = '2012')),
    ('BL10034', '2013', '2024-01-14', 105, (SELECT membership_payment FROM makes_deal_with WHERE landlord_ID = '2013')),
    ('BL10035', '2014', '2024-01-15', 168, (SELECT membership_payment FROM makes_deal_with WHERE landlord_ID = '2014')),
    ('BL10036', '2015', '2024-01-16', 156, (SELECT membership_payment FROM makes_deal_with WHERE landlord_ID = '2015')),
    ('BL10037', '2016', '2024-01-17', 163, (SELECT membership_payment FROM makes_deal_with WHERE landlord_ID = '2016')),
    ('BL10038', '2017', '2024-01-18', 138, (SELECT membership_payment FROM makes_deal_with WHERE landlord_ID = '2017')),
    ('BL10039', '2018', '2024-01-19', 85, (SELECT membership_payment FROM makes_deal_with WHERE landlord_ID = '2018')),
    ('BL10040', '2019', '2024-01-20', 112, (SELECT membership_payment FROM makes_deal_with WHERE landlord_ID = '2019'));
