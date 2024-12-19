-- QUERY 1
SELECT AR.Patient_ID,Registration_Type,
       FLOOR(TIMESTAMPDIFF(MINUTE, AR.appointment_time, P.check_in_time)) AS wait_time,
       (SELECT AVG(FLOOR(TIMESTAMPDIFF(MINUTE, AR.appointment_time, P.check_in_time)))
        FROM Appointment_Registration AR
        JOIN Patient P ON AR.Patient_ID = P.Patient_ID) AS avg_wait_time
FROM Appointment_Registration AR
JOIN Patient P ON AR.Patient_ID = P.Patient_ID;

-- QUERY 2

SELECT Registration_type, COUNT(*) as appointment_count
FROM Appointment_Registration 
GROUP BY Registration_type;

-- QUERY 3

SELECT D.department_name, COUNT(*) as visit_count
FROM Appointment_Registration AR
JOIN Hospital_Department D
ON AR.departmentt_id = D.departmentt_id
GROUP BY D.department_name
ORDER BY visit_count DESC;

-- QUERY 4

SELECT HD.Departmentt_ID,HD.Department_Name, AR.Registration_Type,
       FLOOR(TIMESTAMPDIFF(MINUTE, AR.appointment_time, P.check_in_time)) AS wait_time,
       AVG(FLOOR(TIMESTAMPDIFF(MINUTE, AR.appointment_time, P.check_in_time))) AS avg_wait_time
FROM Hospital_Department HD
JOIN Appointment_Registration AR ON HD.Departmentt_ID = AR.Departmentt_ID
JOIN Patient P ON AR.Patient_ID = P.Patient_ID
GROUP BY HD.Departmentt_ID;

-- QUERY 5
SELECT p.first_name,
            p.last_name,
            dr.Doctor_ID,
           ph.Medicine_Name
FROM Patient p
JOIN Doctor dr
ON dr.Doctor_ID = p.Doctor_ID
JOIN Pharmacy ph
ON ph.Medicine_ID = dr.Medicine_ID;





