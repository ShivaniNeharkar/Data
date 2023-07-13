-- Workers
CREATE TABLE Workers(
WorkersID int NOT NULL PRIMARY KEY IDENTITY,
Name varchar(50) NOT NULL,
Address varchar(100) NOT NULL,
Reviews varchar(50) NULL,
Department varchar(50) NULL,
Office varchar(50) NULL,
WorkersPhone varchar(50) NOT NULL,
Email varchar(50) NOT NULL,
WorkersSalary varchar(50) NOT NULL,
Benefits varchar(50) NULL,
ContractType varchar(50) NULL,
);

-- ApparatusReservation:
CREATE TABLE ApparatusReservation (
AppResID int NOT NULL PRIMARY KEY IDENTITY,
ProvisionID int NOT NULL,
ApparatusName varchar(50) NOT NULL,
CheckInTime datetime NULL,
CheckOutTime datetime NULL,
);

-- Provision:
CREATE TABLE Provision(
ProvisionID int NOT NULL PRIMARY KEY IDENTITY,
ProvisionName varchar(50) NOT NULL,
Location varchar(100) NOT NULL,
Departments varchar(100) NULL,
CareCapcity varchar(50) NULL,
MedicalEquipment varchar(50) NULL,
OfficeHours datetime NULL,
RoomCapacity varchar(50) NULL,
);

-- ProvisionSummary:
CREATE TABLE ProvisionSummary (
ProvisionSummaryID int NOT NULL PRIMARY KEY IDENTITY,
ProvisionID int NOT NULL,
ImagingID int NOT NULL,
MedicalID int NOT NULL,
LabID int NOT NULL,
)

-- Imaging:
CREATE TABLE Imaging (
ImagingID int NOT NULL PRIMARY KEY IDENTITY,
ImagingName varchar(50) NOT NULL,
Testing varchar(50) NULL,
);

-- AdmitPatient:
CREATE TABLE AdmitPatient (
AdmitPatientID int NOT NULL PRIMARY KEY IDENTITY,
WorkersID int NOT NULL,
ProvisionID int NOT NULL,
AdmitPatientName varchar(50) NOT NULL,
PatientID int NOT NULL,
Schedule datetime NULL,
);


-- Costs:
CREATE TABLE Costs (
CostsID int NOT NULL PRIMARY KEY IDENTITY,
PatientID int NOT NULL,
Medications varchar(50) NULL,
Procedures varchar(50) NULL,
)

-- Billing:
CREATE TABLE Billing (
BillingID int NOT NULL PRIMARY KEY IDENTITY,
PatientID int NOT NULL,
Visits varchar(50) NULL,
MedicalBillingCodes varchar(50) NULL,
Payor varchar(50) NULL,
PaymentMethod varchar(50) NULL,
)

-- CoverageOfInsurance:
CREATE TABLE CoverageOfInsurance (
InsuranceID int NOT NULL PRIMARY KEY IDENTITY,
PatientID int NOT NULL,
InsuranceCompanyName varchar(50) NOT NULL,
InsurancePhone varchar(50) NOT NULL,
InsuranceCoverages varchar(50) NOT NULL,
)

-- Lab:
CREATE TABLE Lab (
LabID int NOT NULL PRIMARY KEY IDENTITY,
LabName varchar(50) NOT NULL,
Results varchar(50) NULL,
CompulsoryReporting varchar(50) NULL,
)

-- Staff:
CREATE TABLE Staff (
WorkersID int NOT NULL PRIMARY KEY IDENTITY,
Name varchar(50) NOT NULL,
Position varchar(50) NOT NULL,
Status varchar(50) NOT NULL,
Type varchar(50) NOT NULL,
)

-- ScheduleForNonStaff:
CREATE TABLE ScheduleForNonStaff (
NonStaffID int NOT NULL PRIMARY KEY IDENTITY,
WorkersID int NOT NULL,
ProvisionID int NOT NULL,
Schedule datetime NULL,
)

-- ScheduleForNurse:
CREATE TABLE ScheduleForNurse (
ScheduleNurseID int NOT NULL PRIMARY KEY IDENTITY,
Name varchar(50) NOT NULL,
WorkersID int NOT NULL,
ProvisionID int NOT NULL,
Schedule datetime NULL,
);


-- PatientInfo:
CREATE TABLE PatientInfo (
PatientID int NOT NULL PRIMARY KEY IDENTITY,
Name varchar(50) NOT NULL,
Address varchar(100) NULL,
Phone varchar(50) NULL,
PatientEmail varchar(50) NULL,
HealthInsuranceInfo varchar(50) NULL,
Doctor varchar(50) NOT NULL,
);

-- Appointments:
CREATE TABLE Appointments (
AppointmentID int NOT NULL PRIMARY KEY IDENTITY,
PatientID int NOT NULL,
WorkersID int NOT NULL,
AppointmentDate datetime NOT NULL,
Description varchar(50) NULL,
);

-- PatientRecords:
CREATE TABLE PatientRecords (
PatientRecordID int NOT NULL PRIMARY KEY IDENTITY,
PatientID int NOT NULL,
PatientWeight int NULL,
PatientHeight int NULL,
Vitals varchar(50) NULL,
Doctor varchar(50) NULL,
CheckInTime datetime NULL,
CheckOutTime datetime NULL,
Discharge varchar(50) NULL,
ProcedureCodes int NULL,
SuggestedDoctor varchar(50) NULL,
);

-- Medical:
CREATE TABLE Medical (
MedicalID int NOT NULL PRIMARY KEY IDENTITY,
MedicalName varchar(50) NOT NULL,
PatientMedicines varchar(50) NULL,
RentalEquipment varchar(50) NULL,
);


-- DoctorSchedules:
CREATE TABLE DoctorSchedules (
DoctorScheID int NOT NULL PRIMARY KEY IDENTITY,
Name varchar(50) NOT NULL,
WorkersID int NOT NULL,
ProvisionID int NOT NULL,
Schedule datetime NULL,
)

-- SurgeryRoomSchedules:
CREATE TABLE SurgeryRoomSchedules (
SurRooScheID int NOT NULL PRIMARY KEY IDENTITY,
WorkersID int NOT NULL,
ProvisionID int NOT NULL,
SurgeryRoomName varchar(50) NOT NULL,
Schedule datetime NULL,
);

-- VisitingInfo:
CREATE TABLE VisitingInfo (
VisitingInfoID int NOT NULL PRIMARY KEY IDENTITY,
PatientID int NOT NULL,
VisitorsID int NOT NULL,
);

-- Visitors:
CREATE TABLE Visitors (
VisitorsID int NOT NULL PRIMARY KEY IDENTITY,
VisitorsName varchar(50) NOT NULL,
IDNo varchar(50) NOT NULL,
EntryTime datetime NULL,
ExitTime datetime NULL,
DOB datetime NULL,
Picture image NULL,
Visits varchar(50) NOT NULL,
);
