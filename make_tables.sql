CREATE TABLE User
(
	user_name VARCHAR(20) NOT NULL,
	user_tel CHAR(10),
	user_location VARCHAR(30),
	PRIMARY KEY (user_name)
);

CREATE TABLE Software
(
	software_name VARCHAR(20) NOT NULL,
	software_num INT NOT NULL,
	software_license VARCHAR(20),
	software_po_num CHAR(5),
	software_po_date DATE,
	software_expiry DATE,
	user_name VARCHAR(20) NOT NULL,
	PRIMARY KEY(software_name, software_num),
	FOREIGN KEY(user_name) REFERENCES User(user_name)
);

CREATE TABLE Computer
(
	computer_serial VARCHAR(20) NOT NULL,
	computer_type VARCHAR(20),
	computer_make VARCHAR(20),
	computer_model VARCHAR(20),
	computer_os VARCHAR(20),
	computer_po_num CHAR(5),
	computer_po_date DATE,
	user_name VARCHAR(20) NOT NULL,	
	PRIMARY KEY(computer_serial),
	FOREIGN KEY(user_name) REFERENCES user(user_name)
);

CREATE TABLE Device
(
	device_serial VARCHAR(20) NOT NULL,
	device_type VARCHAR(20),
	device_make VARCHAR(20),
	device_model VARCHAR(20),
	device_po_num CHAR(5),
	device_po_date DATE,
	user_name VARCHAR(20) NOT NULL,	
	PRIMARY KEY(device_serial),
	FOREIGN KEY(user_name) REFERENCES user(user_name)
);