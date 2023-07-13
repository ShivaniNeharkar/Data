-- Transactions 1:
BEGIN TRAN
UPDATE PatientInfo
SET Doctor = 'Peter Zhu'
WHERE PatientID = 1
COMMIT TRAN;
GO
SELECT PatientID, Doctor
FROM PatientInfo
WHERE PatientID = 1;


-- Transactions 2:
BEGIN TRAN
UPDATE PatientInfo
SET Doctor = 'Dr. Michael Johnson'
WHERE PatientID = 1
COMMIT TRAN


-- Transactions 3:
BEGIN TRAN
DELETE FROM Appointments
WHERE AppointmentID = 1
COMMIT TRAN

-- Transactions 4:
BEGIN TRAN
ALTER TABLE Appointments
ADD AppointmentTypes varchar(50) NOT NULL DEFAULT 'General'
COMMIT TRAN;
