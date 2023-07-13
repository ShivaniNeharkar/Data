-- Business Report 1
CREATE PROCEDURE PatientHeight @Height int
AS
BEGIN
SELECT count(PatientID) as PID
FROM PatientRecords
WHERE PatientHeight >= @Height ;
END;
GO
USE CenterForMedical;
GO
EXEC PatientHeight @Height = 30;
GO

-- Business Report 2
CREATE PROCEDURE findNumberOfAdmissionsFromAndBefore @DateTime1 DATETIME,
@DateTime2 DATETIME
AS
BEGIN
SELECT count(AppResID) as TotalAdmissions
FROM ApparatusReservation
WHERE CheckInTime >= @DateTime1 AND CheckOutTime <= @DateTime2 ;
END;
GO
USE CenterForMedical;
GO
EXEC findNumberOfAdmissionsFromAndBefore @DateTime1 = '2023-05-01 10:00:00',
@DateTime2 = '2023-05-31 11:59:00';
GO


-- Business Report 3:
CREATE PROCEDURE PatientsRecords @DateTime1 DATETIME, @DateTime2
DATETIME
AS
BEGIN
SELECT count(PatientRecordID) as PatientRecords
FROM PatientRecords
WHERE CheckInTime >= @DateTime1 AND CheckOutTime <= @DateTime2 ;
END;
GO
USE CenterForMedical;
GO
EXEC PatientsRecords @DateTime1 = '2023-05-01 10:00:00', @DateTime2 = '2023-05-31
11:59:00';
GO


-- Business Report 4:
CREATE PROCEDURE PatientWeight @Weight int
AS
BEGIN
SELECT count(PatientID) as PID
FROM PatientRecords
WHERE PatientWeight >= @Weight ;
END;
GO
USE CenterForMedical;
GO
EXEC PatientWeight @Weight = 80;
GO

