SELECT COUNT(member_id) as total_members FROM members;	--Find Total Members
SELECT * FROM Equipment WHERE room_number = 1 AND maintenance_needed = TRUE;
SELECT concat(f_name, ' ',l_name) as name FROM Members WHERE member_id IN (SELECT member_id FROM attend WHERE session_id = 1);
SELECT concat(f_name, ' ',l_name) as supervisor_name FROM Administrative_staff WHERE staff_id = (SELECT staff_id FROM Supervises WHERE trainer_id = 1);
UPDATE Members SET membership_id = 2 WHERE member_id = 1;
UPDATE Members SET fitness_achievements = '5 mile in 9 minutes' WHERE member_id = 2;
INSERT INTO Members VALUES (3, 'Jakes', 'fors', '2013-08-21', 'Healthy 119lb, 5ft 5', 'Cars33@gmail.com', 'wants ot be 111lb fast', 'fdsafdsasadfd1@', '2023-12-01', 50, 'Paypal', 1);
DELETE FROM Members WHERE member_id = 3;
INSERT INTO member_workoutplan VALUES (1,2);
SELECT schedule_contents FROM Schedule NATURAL INNER JOIN Member_Schedules WHERE member_id = 2;
SELECT SUM (price) as Total_Cost FROM 
	(
		SELECT price FROM membership WHERE membership_id = (SELECT membership_id FROM Members WHERE member_id = 1)
		UNION ALL
		SELECT SUM(price) as price FROM member_workoutplan NATURAL INNER JOIN workout_plan
	) as Total_Paying; 