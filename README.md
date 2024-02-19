
Hello,
The development and deployment of the Center For Medical (COM) database are integral components of this project. Within this endeavor, the database illustrates the intricate relationships among patients, employees, and facilities within a hospital setting. The project comprises four main sections: Data Design, Data Implementation, Database Testing, and Conclusion. The Data Design section incorporates the Entity-Relationship (E/R) diagram. Meanwhile, table construction and data insertion procedures are encompassed in the Data Implementation segment. The Testing section showcases various elements such as views, stored procedures, user-created functions, triggers, transactions, and scripts aimed at validating the database design. Lastly, the Conclusion section encompasses project analysis and reflections.


![DBMS](https://github.com/ShivaniNeharkar/DataBase-Management/assets/43198273/b4a5bb1d-bfee-4d3f-95ae-e4d977544a95)



**Table —Primary Key—-- Foreign Key**

PatientInfo—- PatientID
CoverageOfInsurance—--InsuranceID —----PatientID
Costs—--- CostsID—---- PatientID
Billing—------ BillingID —-----PatientID
VisitingInfo—-------- VisitingInfoID —---PatientID, VisitorsID
Visitors—---- VisitorsID
PatientRecords—--- PatRecID—-------- PatientID
Appointments—------ AppID —------PatientID, WorkersID
Workers—---WorkersID
Staff —--------WorkersID —---------WorkersID
ScheduleForNonStaff—--------- NonStaffID—-- WorkersID, FacilityID
DoctorSchedules—----- DoctorScheID—------- WorkersID, ProvisionID
SchedulesForNurses—--- ScheduleNurseID —------WorkersID, ProvisionID
SurgeryRoomSchedules—--- SurRooScheID —------WorkersID, ProvisionID
AdmitPatient —----AdmitPatientID —------WorkersID, ProvisionID
Provision—-----ProvisionID
ApparatusReservations —------AppResID—------ Provision
ProvisionSummary—---ProvisionSummaryID—---- ProvisionID
Lab---------- LabID
Medical—-MedicalID
Imaging—------ ImagingID
