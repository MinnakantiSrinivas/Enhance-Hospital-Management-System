-- Project Phase 2
-- Table Creation

-- creat appointment_registration table
CREATE TABLE Appointment_Registration
(
Registration_ID  Varchar(10) primary key,
Registration_Date Date NOT NULL,
Appointment_Time Time NOT NULL,
Departmentt_ID Varchar(10) NOT NULL,
Registration_Type varchar (20) NOT NULL,
Patient_ID Varchar(10));
-- drop table Appointment_Registration; 

-- create patient table
CREATE TABLE Patient
(
Patient_ID Varchar(10) primary key,
first_name char(15) NOT NULL,
last_name char(15) NOT NULL,
Street_Address Varchar(40) NOT NULL,
City char(20) NOT NULL,
State char(20) NOT NULL,
zipcode Varchar(10) NOT NULL,
Phone_no Varchar (12) NOT NULL,
Doctor_ID Varchar(10),
Record_ID Varchar(10),
Check_in_time Time NOT NULL);
-- drop table Patient;

-- create doctor table
CREATE TABLE Doctor
(
Doctor_ID Varchar(10) primary key,
first_name char(15) NOT NULL,
last_name char(15) NOT NULL,
Test_ID Varchar(10) NOT NULL,
Medicine_ID Varchar(10) NOT NULL,
Departmentt_ID Varchar(10) NOT NULL);
-- drop table Doctor;

/*creating Department table*/
CREATE TABLE  Hospital_Department(
Departmentt_id Varchar(10) primary key,
Department_name varchar(20));
-- drop table Hospital_Department;

/* creating Lab table*/
CREATE TABLE Labs (
Test_ID Varchar(10)primary key,
Test_name varchar(20),
Lab_Technician_ID char(10));
-- drop table Labs;

/*creating medical records table*/
CREATE TABLE Medical_records(
Record_ID VARCHAR (10) Primary key,
Insurance_ID varchar (10));
-- drop table Medical_records;

/* creating pharmacy table*/
CREATE TABLE Pharmacy(
Medicine_ID VARCHAR (10) primary key,
Medicine_name char(20),
Pharmacist_ID varchar(10));
-- DROP table Pharmacy;

-- create foreign keys

ALTER TABLE	Appointment_Registration 
ADD CONSTRAINT FOREIGN KEY (Departmentt_id)
references Hospital_Department(Departmentt_id);

ALTER TABLE	Appointment_Registration 
ADD CONSTRAINT FOREIGN KEY (Patient_id)
REFERENCES Patient(Patient_id);

ALTER TABLE	Patient  
ADD CONSTRAINT FOREIGN KEY (Doctor_ID)
REFERENCES Doctor(Doctor_ID);

ALTER TABLE	Patient  
ADD CONSTRAINT FOREIGN KEY (Record_ID)
REFERENCES Medical_records (Record_ID);

ALTER TABLE	Doctor  
ADD CONSTRAINT FOREIGN KEY (Test_ID)
REFERENCES Labs (Test_ID);


ALTER TABLE	Doctor  
ADD CONSTRAINT FOREIGN KEY (Medicine_ID)
REFERENCES Pharmacy (Medicine_ID);

ALTER TABLE	Doctor  
ADD CONSTRAINT FOREIGN KEY (Departmentt_id)
REFERENCES Hospital_Department (Departmentt_id);






