-- VIEW 1

Create view PatientBilling_V
As
Select dbo.PatientInfo.PatientID, dbo.PatientInfo.NAme, MedicalBillingCodes As
MBC, PayorFrom PatientInfo JOIN Billing
ON PatientInfo.PatientID = Billing.PatientID
Where Name="Stephanie Smith";
GoodSelect * 
from PatientBilling_V

-- VIEW 2

Create view PatientAppointment_V
As
Select AppointmentID, dbo.Appointments.PatientID, AppointmentDate, dbo.Appointments.WorkersID, dbo.Workers.Name 
From Appointments Join Workers
ON Appointments.WorkersID = Workers.WorkersID
Where AppointmentDate>"2009-01-01";
GO
Select * 
From PatientAppointment_V
Order by PatientID;

-- VIEW 3
Create view PatientMedicalInfo_V
As
Select Name, dbo.PatientInfo.PatientID, PatientHeight
From PatientInfo Join PatientRecords
ON dbo.PatientInfo.PatientID = PatientRecords.PateintID
Where Name like '[E]%';
GO
Select * 
From PatientMedicalInfo_V;

-- VIEW 4
Create view PhysicianSchedule_V
As
Select DoctorScheID, Staff.WorkersID,CONCAT(Staff.Name,",",Position,",",Schedule) As DoctorInform, Status
From Staff Join DoctorSchedules
ON Staff.WorkersID = DoctorSchedules.WorkersID
GO
Select * 
From PhysicianSchedule_V
Where DoctorScheID=7;
