--do each one of these indivudually

--view the events that the user with id 1 is planning on attending
SELECT event_name, date_time FROM Members JOIN (EventAttendence JOIN (SELECT * FROM events) USING (event_name)) USING (member_id) WHERE member_id = 1

--view member ids, emails, and full names
SELECT member_id, email, full_name  FROM members

--view all of the training sessions for trainer with id 3
SELECT session_id, members.full_name, date_time, notes FROM members JOIN (TrainingSessions JOIN (SELECT * FROM trainers) USING (trainer_id)) USING (member_id) WHERE trainer_id = 3

--update note for training sessions with an id of 2
UPDATE TrainingSessions SET notes = 'Worked on upper body' WHERE session_id = 2

--change the email of the member with id 2
UPDATE members SET email = 'J.McMuffin@example.com' WHERE member_id = 2

-- select the fitness goals of all the members
SELECT member_id, full_name, weight, bmi FROM Goals JOIN (SELECT member_id, full_name FROM Members) USING (member_id)

-- update the weight fitness goal of member with id of 1
UPDATE goals SET weight = 130 WHERE member_id = 1

-- delete the trainer with an id of 2
DELETE FROM trainers WHERE trainer_id = 2

--view all the trainers ids, names, and emails
SELECT trainer_id, full_name, email FROM Trainers

--view all the planned maintence for the equipment
SELECT equipment_id, equipment_type, maintenance_date FROM maintenance JOIN (SELECT * FROM equipment) USING (equipment_id)