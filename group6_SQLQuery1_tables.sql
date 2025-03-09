CREATE TABLE Admins (
    admin_ID VARCHAR(30) PRIMARY KEY,
    admin_name VARCHAR(30),
    admin_surname VARCHAR(30),
    admin_password VARCHAR(10) UNIQUE NOT NULL,
    admin_email VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE Landlords (
    landlord_ID VARCHAR(30) PRIMARY KEY,
    landlord_name VARCHAR(30),
    landlord_surname VARCHAR(80),
    landlord_password VARCHAR(10) NOT NULL,
    landlord_email VARCHAR(50) UNIQUE NOT NULL,
    landlord_telephone_number VARCHAR(12) UNIQUE NOT NULL,
	UNIQUE (landlord_name, landlord_surname, landlord_telephone_number)
);

CREATE TABLE Locations (
    location_ID VARCHAR(30) PRIMARY KEY,
	landlord_ID VARCHAR(30),
    location_name VARCHAR(30),
    street_name VARCHAR(100),
    gate_no VARCHAR(30),
    total_number_of_seats INT DEFAULT 0,
    number_of_seats_available INT,
	location_crowd_rate DECIMAL (5, 2) CHECK (location_crowd_rate<=10),
    location_facility_rate DECIMAL(2, 1) CHECK (location_facility_rate<=10),
    average_price_level_of_items DECIMAL(10, 2),
    location_accessibility_rate DECIMAL (2, 1) CHECK (location_accessibility_rate<=10),
	location_reservation_rate DECIMAL (10, 2) CHECK (location_reservation_rate<=10) NULL,
	FOREIGN KEY (landlord_ID) REFERENCES Landlords(landlord_ID)
);


ALTER TABLE Locations
ADD CONSTRAINT check_number_of_seats_available CHECK (number_of_seats_available<=total_number_of_seats)


CREATE TABLE makes_deal_with (
    landlord_ID VARCHAR(30) NOT NULL,
    admin_ID VARCHAR(30) NOT NULL,
    membership_payment DECIMAL(10, 2),
    commission_fee DECIMAL(5, 2),
    contract_no VARCHAR(255) UNIQUE NOT NULL, 
	contract_file VARBINARY(MAX),
    contract_time TIME DEFAULT CURRENT_TIMESTAMP UNIQUE,
	UNIQUE (landlord_ID, admin_ID), 
    FOREIGN KEY (admin_ID) REFERENCES Admins(admin_ID),
    FOREIGN KEY (landlord_ID) REFERENCES Landlords(landlord_ID)
);


CREATE TABLE Students (
    student_ID VARCHAR(30) PRIMARY KEY,
    student_name VARCHAR(30),
    student_surname VARCHAR(25),
    student_email VARCHAR(50) UNIQUE NOT NULL,
    student_password VARCHAR(10) NOT NULL,
    student_status INT DEFAULT 0,
	UNIQUE (student_name, student_surname, student_email)
);

CREATE TABLE Reservations (
    booking_ID VARCHAR(30) PRIMARY KEY,
    student_ID VARCHAR(30) NOT NULL,
    location_ID VARCHAR(30) NOT NULL,
    booking_date TIME DEFAULT CURRENT_TIMESTAMP, 
    reserv_start_time TIME,
    reserv_end_time TIME,
    reserv_rate DECIMAL(5, 2) CHECK (reserv_rate<=10),
    reserv_comment TEXT,
    FOREIGN KEY (student_ID) REFERENCES Students (student_ID),
    FOREIGN KEY (location_ID) REFERENCES Locations (location_ID)
);

CREATE TABLE Bills (
    bill_ID VARCHAR(30) PRIMARY KEY,
    landlord_ID VARCHAR(30),
	bill_date DATE,
    tax_rate DECIMAL(2, 2) DEFAULT 0.15 CHECK (0<tax_rate AND tax_rate<1),
	number_of_monthly_reserved_seats INT,
    payment_of_commissions DECIMAL(10, 2) DEFAULT 0,
    membership_payment DECIMAL(10, 2),
	total_payment DECIMAL (10,2) NULL,
    FOREIGN KEY (landlord_ID) REFERENCES Landlords(landlord_ID)
);


