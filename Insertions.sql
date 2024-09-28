/*
delete from Appointment
delete from Doctor
delete from Patient
delete from Department
delete from OtherStaff
delete from LoginTable
*/

USE DBProject
GO


INSERT INTO LoginTable VALUES ('admin' ,'admin@gmail.com' ,   3)

--DEPARTMENT INSERTION
insert into department values(1 , 'Cardiology' , 'We have the best heart specialists in town .Each one of them is very competent and experienced.')
insert into department values(2 , 'Orthopaedics' , 'Orthopedic surgeons use surgical means to treat musculoskeletal trauma, infections, tumors. We believe in the best.')
insert into department values(3 , 'Ears Nose Throat' , 'They are gentle. And are trained to handle kids as well as adults.')
insert into department values(4 , 'Physiotherapy ',' Physiotherapists work through physical therapies such as exercise, and manipulation of bones, joints and muscle tissues.' )
insert into department values(5 , 'Neurology', 'A medical speciality dealing with disorders of the nervous system. It deals with the diagnosis and treatment of all categories of disease.')



-- LoginTable Insertions
INSERT INTO LoginTable (Email, Password, Type) VALUES
('example1@gmail.com', 'abc', 2),
('example2@gmail.com', 'abc', 2),
('example3@gmail.com', 'abc', 2),
('example4@gmail.com', 'abc', 2),
('example5@gmail.com', 'abc', 2),
('example6@gmail.com', 'abc', 2),
('example7@gmail.com', 'abc', 2),
('example8@gmail.com', 'abc', 2),
('example9@gmail.com', 'abc', 2),
('example10@gmail.com', 'abc', 2),

('user1@gmail.com', 'abc', 1),
('user2@gmail.com', 'abc', 1),
('user3@gmail.com', 'abc', 1);

-- Doctor Insertions
DECLARE @ID INT
SELECT @ID = LoginID FROM LoginTable WHERE Email = 'example1@gmail.com'
INSERT INTO Doctor VALUES(@ID, 'Example One', '123456789', 'Sonipat', '01-01-1990', 'M', 1, 2500, 30000, 4, 0, 'all', 'ENJOY', 10, 1)
SELECT @ID = LoginID FROM LoginTable WHERE Email = 'example2@gmail.com'
INSERT INTO Doctor VALUES(@ID, 'Example Two', '234567890', 'Sonipat', '01-01-1990', 'M', 1, 3000, 25000, 3.5, 0, 'all', 'ENJOY', 10, 1)
SELECT @ID = LoginID FROM LoginTable WHERE Email = 'example3@gmail.com'
INSERT INTO Doctor VALUES(@ID, 'Example Three', '345678901', 'Sonipat', '01-01-1990', 'M', 1, 1500, 20000, 5, 0, 'all', 'ENJOY', 10, 1)
SELECT @ID = LoginID FROM LoginTable WHERE Email = 'example4@gmail.com'
INSERT INTO Doctor VALUES(@ID, 'Example Four', '456789012', 'Sonipat', '01-01-1990', 'M', 1, 1000, 15000, 4.5, 0, 'all', 'ENJOY', 10, 1)
SELECT @ID = LoginID FROM LoginTable WHERE Email = 'example5@gmail.com'
INSERT INTO Doctor VALUES(@ID, 'Example Five', '567890123', 'Sonipat', '01-01-1990', 'M', 2, 1000, 15000, 4.5, 0, 'all', 'ENJOY', 10, 1)
SELECT @ID = LoginID FROM LoginTable WHERE Email = 'example6@gmail.com'
INSERT INTO Doctor VALUES(@ID, 'Example Six', '678901234', 'Sonipat', '01-01-1990', 'M', 2, 1000, 15000, 4.5, 0, 'all', 'ENJOY', 10, 1)
SELECT @ID = LoginID FROM LoginTable WHERE Email = 'example7@gmail.com'
INSERT INTO Doctor VALUES(@ID, 'Example Seven', '789012345', 'Sonipat', '01-01-1990', 'M', 3, 1000, 15000, 4.5, 0, 'all', 'ENJOY', 10, 1)
SELECT @ID = LoginID FROM LoginTable WHERE Email = 'example8@gmail.com'
INSERT INTO Doctor VALUES(@ID, 'Example Eight', '890123456', 'Sonipat', '01-01-1990', 'M', 3, 1000, 15000, 4.5, 0, 'all', 'ENJOY', 10, 1)
SELECT @ID = LoginID FROM LoginTable WHERE Email = 'example9@gmail.com'
INSERT INTO Doctor VALUES(@ID, 'Example Nine', '901234567', 'Sonipat', '01-01-1990', 'M', 4, 1000, 15000, 4.5, 0, 'all', 'ENJOY', 10, 1)
SELECT @ID = LoginID FROM LoginTable WHERE Email = 'example10@gmail.com'
INSERT INTO Doctor VALUES(@ID, 'Example Ten', '012345678', 'Sonipat', '01-01-1990', 'M', 5, 1000, 15000, 4.5, 0, 'all', 'ENJOY', 10, 1);

-- Patient Insertions
DECLARE @P_ID INT
SELECT @P_ID = LoginID FROM LoginTable WHERE Email = 'user1@gmail.com'
INSERT INTO Patient VALUES(@P_ID, 'User One', '1122334455', 'Sonipat', '01-01-1990', 'M')
SELECT @P_ID = LoginID FROM LoginTable WHERE Email = 'user2@gmail.com'
INSERT INTO Patient VALUES(@P_ID, 'User Two', '2233445566', 'Sonipat', '01-01-1990', 'M')
SELECT @P_ID = LoginID FROM LoginTable WHERE Email = 'user3@gmail.com'
INSERT INTO Patient VALUES(@P_ID, 'User Three', '3344556677', 'Sonipat', '01-01-1990', 'M');

-- OtherStaff Insertions
INSERT INTO OtherStaff  VALUES 
('Random Name1', '9988776655', 'Sonipat', 'Guard', 'M', '01-01-1990', 'Matric', 5000),
('Random Name2', '8877665544', 'Sonipat', 'Sweeper', 'M', '01-01-1990', 'Matric', 5000),
('Random Name3', '7766554433', 'Sonipat', 'Security', 'M', '01-01-1990', 'Matric', 5000),
('Random Name4', '6655443322', 'Sonipat', 'Guard', 'M', '01-01-1990', 'Matric', 5000),
('Random Name5', '5544332211', 'Sonipat', 'Guard', 'M', '01-01-1990', 'Matric', 5000),
('Random Name6', '4433221100', 'Sonipat', 'Guard', 'M', '01-01-1990', 'Matric', 5000);







--Because I have inserted the date and time in a particular format in the appointment table and that format has to be maintained
--for proper working

/*
--APPOINTMENT INSERTIONS 
DECLARE @DOCTOR_ID INT
DECLARE @PATIENT_ID INT
SELECT @DOCTOR_ID = LoginID FROM LoginTable WHERE Email='farhan@gmail.com'
SELECT @PATIENT_ID = LoginID FROM LoginTable WHERE Email='ABC@gmail.com'
INSERT INTO Appointment(DoctorID, PatientID, Date, Appointment_Status) VALUES(@DOCTOR_ID, @PATIENT_ID, '2017-5-4 10:00:00', 3)
SELECT @DOCTOR_ID = LoginID FROM LoginTable WHERE Email='farhan@gmail.com'
SELECT @PATIENT_ID = LoginID FROM LoginTable WHERE Email='DEF@gmail.com'
INSERT INTO Appointment(DoctorID, PatientID, Date, Appointment_Status) VALUES(@DOCTOR_ID, @PATIENT_ID, '2017-5-4 12:00:00', 1)
SELECT @DOCTOR_ID = LoginID FROM LoginTable WHERE Email='hassaan@gmail.com'
SELECT @PATIENT_ID = LoginID FROM LoginTable WHERE Email='DEF@gmail.com'
INSERT INTO Appointment(DoctorID, PatientID, Date, Appointment_Status) VALUES(@DOCTOR_ID, @PATIENT_ID, '2017-5-4 16:00:00', 3)
*/

