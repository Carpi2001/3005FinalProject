CREATE SEQUENCE member_id_seq START 1 INCREMENT 1;
CREATE SEQUENCE trainer_id_seq START 1 INCREMENT 1;
CREATE SEQUENCE admin_id_seq START 1 INCREMENT 1;
CREATE SEQUENCE session_id_seq START 1 INCREMENT 1;
CREATE SEQUENCE payment_id_seq START 1 INCREMENT 1;
CREATE SEQUENCE equipment_id_seq START 1 INCREMENT 1;

CREATE TABLE Members
	(member_id INT DEFAULT nextval('member_id_seq'),
	 full_name TEXT NOT NULL ,
	 email TEXT NOT NULL UNIQUE,
	 join_date DATE DEFAULT CURRENT_TIMESTAMP,
	 loyalty_points INT DEFAULT 0,
	 password TEXT,
	 primary key (member_id)
);
	
CREATE TABLE Trainers
	(trainer_id INT DEFAULT nextval('trainer_id_seq'),
	 full_name TEXT NOT NULL ,
	 email TEXT NOT NULL UNIQUE,
	 password TEXT,
	 primary key (trainer_id)
);

CREATE TABLE Admins
	(admin_id INT DEFAULT nextval('admin_id_seq'),
	 full_name TEXT NOT NULL ,
	 email TEXT NOT NULL UNIQUE,
	 password TEXT,
	 primary key (admin_id)
);

CREATE TABLE TrainingSessions
	(session_id INT DEFAULT nextval('session_id_seq'),
	 member_id INT,
	 trainer_id INT,
	 Date_Time TIMESTAMP,
	 Notes TEXT,
	 primary key (session_id),
	 foreign key (member_id) references Members
		on delete set null,
	foreign key (trainer_id) references Trainers
		on delete set null
);

CREATE TABLE Events
	(event_name TEXT NOT NULL UNIQUE,
	Date_Time TIMESTAMP NOT NULL,
	primary key (event_name)
);

CREATE TABLE EventAttendence
	(event_name TEXT NOT NULL,
	member_id INT NOT NULL,
	primary key(event_name,member_id),
	foreign key (member_id) references Members
		on delete set null,
	foreign key (event_name) references Events
		on delete set null
);

CREATE TABLE Payments
	(payment_id INT DEFAULT nextval('payment_id_seq'),
	member_id INT NOT NULL,
	payment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
	payment_amount INT NOT NULL,
	primary key (payment_id),
	foreign key (member_id) references Members
		on delete set null
);

CREATE TABLE Visits
	(visit_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	member_id INT NOT NULL,
	primary key (visit_date,member_id),
	foreign key (member_id) references Members
		on delete set null
);

CREATE TABLE Equipment
	(equipment_id INT DEFAULT nextval('equipment_id_seq'),
	equipment_type TEXT NOT NULL,
	condition TEXT NOT NULL,
	primary key (equipment_id)
);

CREATE TABLE Maintenance
	(equipment_id INT NOT NULL,
	maintenance_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	primary key (equipment_id,maintenance_date),
	foreign key (equipment_id) references Equipment
		on delete set null
);

CREATE TABLE Goals
	(member_id INT NOT NULL,
	weight int DEFAULT 0,
	bmi int DEFAULT 0,
	primary key (member_id),
	foreign key (member_id) references Members
		on delete set null
);