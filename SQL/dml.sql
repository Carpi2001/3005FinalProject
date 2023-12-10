-- populate member table
INSERT INTO members (full_name, email, password) VALUES
('John Doe', 'john.doe@example.com', 'password'),
('Jim McMuffin', 'McMuffin@example.com', 'password123'),
('Eleanor Rigby', 'E.Rigby@example.com', 'Beatles66');

--populate trainer table
INSERT INTO trainers (full_name, email, password) VALUES
('Jerry Smith', 'jerrys@example.com', 'password99'),
('Weevil Underwood', 'w.underwood@example.com', 'bugs1999'),
('Joe Swanson', 'joe.swanson@example.com', 'ABC123');

--populate admin table
INSERT INTO admins (full_name, email, password) VALUES
('John Smith', 'john.smith@example.com', 'password123');

--populate events table
INSERT INTO events (event_name, date_time) VALUES
('Dance Class', '2023-01-01 13:30:00'),
('Swim Class', '2023-01-03 10:30:00');

--populate event attendence
INSERT INTO EventAttendence (event_name, member_id) VALUES
('Dance Class', 1),('Swim Class',1),('Swim Class',3);

--populate training sessions
INSERT INTO TrainingSessions (member_id, trainer_id, date_time) VALUES
(1,1,'2023-01-01 14:30:00'),
(2,3,'2023-01-02 14:30:00'),
(3,3,'2023-01-02 16:30:00');

--populate Goals
INSERT INTO Goals (member_id, weight, bmi) VALUES
(1,150,15);

--populate payments
INSERT INTO Payments(member_id,payment_amount) VALUES
(1,30),
(2,30);

--populate visits
INSERT INTO visits(member_id) VALUES
(1),(2);

--populate equipment
INSERT INTO equipment(equipment_type, condition) VALUES
('Treadmill','new'),
('Bench Press','damaged'),
('Rowing Machine','sligtly used');

--populate maintenance
INSERT INTO maintenance(equipment_id,maintenance_date) VALUES
(2,'2023-01-05 16:30:00');

