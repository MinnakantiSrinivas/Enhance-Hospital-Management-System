-- Project Phase 2 
-- data insert
set FOREIGN_key_checks =0;

INSERT INTO Appointment_Registration
(Registration_ID, Registration_Date, Appointment_Time,Departmentt_ID, Registration_Type, Patient_ID)
VALUES
(00001, '2023-04-06', '09:00:00',101, 'Online', 07552081),
(00002, '2023-04-06', '10:30:00',102, 'In Person', 07552082),
(00003, '2023-04-07', '11:15:00',103, 'Online', 07552083),
(00004, '2023-04-07', '14:00:00',104, 'In Person', 07552084),
(00005, '2023-04-08', '13:30:00',105, 'Online', 07552085),
(00006, '2023-04-09', '15:45:00',106, 'Online', 07552086),
(00007, '2023-04-08', '16:30:00',107, 'Online', 07552087),
(00008, '2023-04-08', '09:45:00',108, 'In Person', 07552088),
(00009, '2023-04-08', '12:15:00',109, 'Online', 07552089),
(00010, '2023-04-09', '16:00:00',101, 'Online', 07552090),
(00011, '2023-04-09', '12:07:00',101, 'Online', 07552191),
(00012, '2023-04-09', '14:20:00',108, 'In Person', 07552193),
(00013, '2023-04-09', '13:00:00',108, 'Online', 07552194),
(00014, '2023-04-09', '11:00:00',101, 'Online', 07552195);

	INSERT INTO Patient
	(Patient_ID, first_name, last_name, Street_Address, City, State, zipcode,Phone_no,Doctor_ID, Record_ID, Check_in_time)
	VALUES
	(07552081, 'Arun', 'Kumar', '13-200 Kasturba Nagar', 'Ananthpur', 'Andhra Pradesh', 515001,9876543210,45923, 39722,'09:05:00'),
	(07552082, 'Sujatha', 'Reddy', '23-98 Sri Krishna Colony', 'Guntur', 'Andhra Pradesh', 522001,8765432109,45924, 39723,'11:25:00'),
	(07552083, 'Ramesh', 'Gupta', '3-76 Srinivasa Nagar', 'Visakhapatnam', 'Andhra Pradesh', 530001,7654321098,45925, 39724,'11:25:00'),
	(07552084, 'Lakshmi', 'Patel', '5-98 Ravi Teja Street', 'Rajamundry', 'Andhra Pradesh', 533101,6543210987, 45926, 39725,'15:30:00'),
	(07552085, 'Naveen', 'Reddy', '12-15 Sai Nagar', 'Vizianagaram', 'Andhra Pradesh', 535001,5432109876, 45927, 39726,'13:32:00'),
	(07552086, 'Deepa', 'Singh', '10-45 Vijayawada Colony', 'Srikakulam', 'Andhra Pradesh', 532001,4321098765,45928, 39727,'15:50:00'),
	(07552087, 'Kishore', 'Sharma', '2-45 Ramesh Nagar', 'Tirupati', 'Andhra Pradesh', 517501,3456789012,45929, 39728,'16:34:00'),
	(07552088, 'Amita', 'Singh', '1-23 Vijaya Gardens', 'Kakinada', 'Andhra Pradesh', 533002,2345678901,45930, 39729,'10:50:00'),
	(07552089, 'Anurag', 'Sen', '1-228 Sita Nagar', 'Ongole', 'Andhra Pradesh',534004,8977240998,45931, 39730,'12:23:00'),
	(07552090, 'Geetha','Sri','4-5 Koritepadu','Guntur','Andhra Pradesh',522007,9398313861,45923,39731,'16:05:00'),
	(07552191, 'Suhasini', 'Samal', 'p-43 Aiginai','Guntur','Andhra Pradesh',522004,9555026834,45923,null,'12:15:00'),
	(07552193, 'Srinivas', 'Minnakanti','41-4 Amaravathi Road', 'Vijayawada','Andhra Padesh',548345,8908111574,45930,null,'15:00:00'),
	(07552194, 'Siri', 'Ravipudi','01-78 Kanuru Road', 'Vijayawada','Andhra Padesh',548348,8908000525,45930,null,'13:20:00'),
	(07552195, 'Lokesh', 'Kanagaraj','90-12 Brundavan Gardens', 'Guntur','Andhra Padesh',522009,9502531231,45923,null,'11:08:00');
	

INSERT INTO Doctor
(Doctor_ID, first_name, last_name, Test_ID, Medicine_ID, Departmentt_ID)
VALUES
(45923, 'John', 'Mathews', 23456, 1234567, 101),
(45924, 'Sarah', 'Khan', 34567, 2345678, 102),
(45925, 'Rajesh', 'Kumar', 45678, 3456789, 103),
(45926, 'Priya', 'Patel', 56789, 4567890, 104),
(45927, 'Vikram', 'Reddy', 67890, 5678901, 105),
(45928, 'Deepak', 'Singh', 78901, 6789012, 106),
(45929, 'Swathi', 'Sharma', 89012, 7890123, 107),
(45930, 'Rohit', 'Gupta', 90123, 8901234, 108),
(45931, 'Anjali', 'Verma', 11234, 9012345, 109),
(45932, 'Ravi', 'Shankar', 23456, 1234568, 110);

INSERT INTO Hospital_Department(Departmentt_id,Department_name)
VALUES
(101,'Cardiology'),
(102,'Neurology'),
(103,'Endocrinology'),
(104,'Oncology'),
(105,'Gastroenterology'),
(106,'Pediatrics'),
(107,'Dermatology'),
(108,'Orthopedics'),
(109,'Pulmonology'),
(110,'Hematology');

INSERT INTO Labs (Test_ID,Test_name,Lab_Technician_Id)
VALUES (12345,'MRI Scan', 123456),
(23456, 'Ultrasound', 654321),
(34567, 'ECG', 789012),
(45678, 'CT Scan', 345678),
(56789, 'Blood Test', 901234),
(67890, 'Stress Test', 567890),
(78901, 'X-Ray', 456789),
(89012, 'Urinalysis', 890123),
(90123, 'Pap Smear', 234567),
(11234, 'Mammogram', 678901);

INSERT INTO Medical_records (Record_Id,Insurance_Id)
VALUES (39722, 8319401572),
(39723, 2645813092),
(39724, 7182495063),
(39725, 9654083217),
(39726, 5724013968),
(39727, 3928670145),
(39728, 4769108239),
(39729, 1394857206),
(39730, 2890374615),
(39731, 6948102531);

INSERT INTO Pharmacy(Medicine_ID,Medicine_name,Pharmacist_ID)
VALUES (1234567,'Paracetamol', 7654321),
(2345678, 'Aspirin', 8765432),
(3456789, 'Ibuprofen', 9876543),
(4567890, 'Acetaminophen', 2345678),
(5678901, 'Amoxicillin', 3456789),
(6789012, 'Azithromycin', 4567890),
(7890123, 'Ciprofloxacin', 5678901),
(8901234, 'Metformin', 6789012),
(9012345, 'Atorvastatin', 7890123),
(1234568, 'Omeprazole', 8901234);
