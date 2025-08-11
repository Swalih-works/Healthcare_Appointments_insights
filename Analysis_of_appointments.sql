SELECT count(*) FROM appointments;
SELECT * FROM appointments;

-- Retrieve percentage of No-Shows :
SELECT count(*) AS Total,
	SUM( CASE WHEN No_show = 'Yes' THEN 1 ELSE 0 END) AS No_shows,
    ROUND(SUM( CASE WHEN No_show = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS No_shows_Percentage
FROM appointments;

-- Retrieve avg age of patients :
SELECT ROUND(AVG(Age), 2) AS Avg_AgeOfPatients FROM appointments;

-- Retrieve no-show rates by weekday :
SELECT DAYNAME(AppointmentDay) AS Week_day,
	COUNT(*) AS Total_Appointments,
    SUM(CASE WHEN No_show = 'Yes' THEN 1 ELSE 0 END) AS No_shows,
    ROUND(SUM(CASE WHEN No_show = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS No_shows_Percentage
	FROM appointments
    GROUP BY Week_day
    ORDER BY FIELD(Week_day, 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday');
    
-- Do SMS reminders reduce no-shows :
SELECT SMS_received,
	COUNT(*) AS Total_Appointments,
    SUM(CASE WHEN No_show = 'Yes' THEN 1 ELSE 0 END) AS No_shows,
    ROUND(SUM(CASE WHEN No_show = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS No_shows_Percentage
    FROM appointments
    GROUP BY SMS_received; -- SMS_received = 1 means patient got a reminder.
    
-- Are older patients more likely to show up :
SELECT CASE
	WHEN Age < 20 THEN '0-19'
    WHEN Age BETWEEN 20 AND 39 THEN '20-39'
    WHEN Age BETWEEN 40 AND 59 THEN '40-59'
    WHEN Age BETWEEN 60 AND 79 THEN '60-79'
    ELSE '80+'
END AS Age_Group,
	COUNT(*) AS Total_Appointments,
    SUM(CASE WHEN No_show = 'Yes' THEN 1 ELSE 0 END) AS No_shows,
    ROUND(SUM(CASE WHEN No_show = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS No_shows_Percentage
    FROM appointments
    WHERE Age >= 0
    GROUP BY Age_Group
    ORDER BY Age_Group;
    
-- Retrieve top 10 Neighborhoods by no-show rates :
SELECT Neighbourhood,
	COUNT(*) AS Total_Appointments,
    SUM(CASE WHEN No_show = 'Yes' THEN 1 ELSE 0 END) AS No_shows,
    ROUND(SUM(CASE WHEN No_show = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS No_shows_Percentage
    FROM appointments
    GROUP BY Neighbourhood
    ORDER BY No_shows DESC
    LIMIT 10;

-- View - SMS Reminder Impact on Appointment Attendance :
CREATE VIEW no_show_by_sms AS
	SELECT SMS_received,
	COUNT(*) AS Total_Appointments,
    SUM(CASE WHEN No_show = 'Yes' THEN 1 ELSE 0 END) AS No_shows,
    ROUND(SUM(CASE WHEN No_show = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS No_shows_Percentage
    FROM appointments
    GROUP BY SMS_received;
    
SELECT * FROM no_show_by_sms;
SELECT * FROM no_show_by_sms WHERE SMS_received = 1; -- added filtering & SMS_received = 1 means patient got a reminder.