-- ALTER TABLE Billing
ADD FOREIGN KEY (PatientID) REFERENCES PatientInfo (PatientID);
-- ALTER TABLE Costs
ADD FOREIGN KEY (PatientID) REFERENCES PatientInfo (PatientID);
-- ALTER TABLE ApparatusReservation
ADD FOREIGN KEY (ProvisionID) REFERENCES Provision (ProvisionID);
-- ALTER TABLE ProvisionSummary
ADD FOREIGN KEY (ProvisionID) REFERENCES Provision (ProvisionID);
-- ALTER TABLE ProvisionSummary
ADD FOREIGN KEY (ImagingID) REFERENCES Imaging (ImagingID);
-- ALTER TABLE ProvisionSummary
ADD FOREIGN KEY (LabID) REFERENCES Lab (LabID);
-- ALTER TABLE ProvisionSummary
ADD FOREIGN KEY (MedicalID) REFERENCES Medical (MedicalID);
-- ALTER TABLE AdmitPatient
ADD FOREIGN KEY (ProvisionID) REFERENCES Provision (ProvisionID);
-- ALTER TABLE AdmitPatient
ADD FOREIGN KEY (WorkersID) REFERENCES Staff (WorkersID);
-- ALTER TABLE CoverageOfInsurance
ADD FOREIGN KEY (PatientID) REFERENCES PatientInfo (PatientID);
-- ALTER TABLE Staff
ADD FOREIGN KEY (WorkersID) REFERENCES Workers (WorkersID);
-- ALTER TABLE ScheduleForNurse
ADD FOREIGN KEY (ProvisionID) REFERENCES Provision (ProvisionID);
-- ALTER TABLE ScheduleForNurse
ADD FOREIGN KEY (WorkersID) REFERENCES Staff (WorkersID);
-- ALTER TABLE Appointments
ADD FOREIGN KEY (WorkersID) REFERENCES Workers (WorkersID);
-- ALTER TABLE Appointments
ADD FOREIGN KEY (PatientID) REFERENCES PatientInfo (PatientID);
-- ALTER TABLE PatientRecords
ADD FOREIGN KEY (PatientID) REFERENCES PatientInfo (PatientID);
-- ALTER TABLE DoctorSchedules
ADD FOREIGN KEY (ProvisionID) REFERENCES Provision (ProvisionID);
-- ALTER TABLE DoctorSchedules
ADD FOREIGN KEY (WorkersID) REFERENCES Staff (WorkersID);
-- ALTER TABLE SurgeryRoomSchedules
ADD FOREIGN KEY (ProvisionID) REFERENCES Provision (ProvisionID);
-- ALTER TABLE SurgeryRoomSchedules
ADD FOREIGN KEY (WorkersID) REFERENCES Staff (WorkersID);
-- ALTER TABLE ScheduleForNonStaff
ADD FOREIGN KEY (WorkersID) REFERENCES Workers (WorkersID);
-- ALTER TABLE ScheduleForNonStaff
ADD FOREIGN KEY (ProvisionID) REFERENCES Provision (ProvisionID);
-- ALTER TABLE VisitingInfo
ADD FOREIGN KEY (PatientID) REFERENCES PatientInfo (PatientID);
-- ALTER TABLE VisitingInfo
ADD FOREIGN KEY (VisitorsID) REFERENCES Visitors (VisitorsID);
