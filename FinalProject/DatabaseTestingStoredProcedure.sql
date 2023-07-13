-- Stored procedures 1
IF OBJECT_ID(spProvisionInfo) IS NOT NULL
DROP PROC spProvisionInfo;
GO
CREATE PROC spProvisionInfo
@ProvisionName VARCHAR(50)
AS
SELECT Location, OfficeHours,RoomCapacity, Departments
FROM Provision
WHERE Provision.ProvisionName = @ProvisionName
GO
EXEC spProvisionInfo 'Maternity Ward';

-- Stored procedures 2
IF OBJECT_ID('spPatientInsuInfo') IS NOT NULL
DROP PROC spPatientInsuInfo;
GO
CREATE PROC spPatientInsuInfo
@name VARCHAR(50)
AS
SELECT InsuranceCompanyName AS HICN, HealthInsuranceInfo AS IC
FROM PatientInfo JOIN CoverageOfInsurance ON Patient.PatientID =
CoverageOfInsurance .PatientID
WHERE PatientInfo.Name = @name
GO
EXEC spPatientInsuInfo 'Stephanie Smith';


-- Stored procedures 3
IF OBJECT_ID('spPatientInsuInfo') IS NOT NULL
DROP PROC spPatientInsuInfo; /*Drop procedure if previous procedure exists*/
GO
/*Create a procedure to find a patient's vistors information*/
CREATE PROCEDURE GetPatientsByPhysicianID (@PhysicianID INT)
AS
BEGIN
SELECT PatientInfo.*
FROM PatientInfo
INNER JOIN Staff ON PatientInfo.PatientID = Staff.WorkersID
WHERE Staff.WorkersID = @PhysicianID;
END
EXEC GetPatientsByPhysicianID @PhysicianID=1;


-- Stored procedures 4
IF OBJECT_ID('spPatientInsuInfo') IS NOT NULL
DROP PROC spPatientInsuInfo; /*Drop procedure if previous procedure exists*/
GO
/*Create a procedure to find a patient's vistors information*/
CREATE PROCEDURE GetInfoByPatientID (@PhysicianID INT)
AS
BEGIN
SELECT PatientRecords.*
FROM Appointments
INNER JOIN PatientRecords ON Appointments.PatientID = PatientRecords.PatientID
WHERE Appointments.PatientID = @PhysicianID;
END
EXEC GetInfoByPatientID @PhysicianID=2;
