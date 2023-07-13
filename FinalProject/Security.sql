-- Security 1:
CREATE ROLE EntryOfPatient; -- create user defined database role
GRANT UPDATE -- set update permission
ON PatientInfo --set table
TO EntryOfPatient;
CREATE LOGIN Take2023 --set login id
WITH PASSWORD ='121212', -- set password
DEFAULT_DATABASE = CenterForMedical; --set default database
CREATE USER ZEKE FOR LOGIN Take2023; --create user for login
ALTER ROLE EntryOfPatient ADD MEMBER ZEKE; --assign user


-- Security 2:
CREATE ROLE WorkersEntry; -- create user defined database role
GRANT UPDATE,INSERT,DELETE -- set update,insert,delete permission
ON Staff --set table
TO WorkersEntry;
CREATE LOGIN UniMedical --set login id
WITH PASSWORD ='5643287', -- set password
DEFAULT_DATABASE = CenterForMedical; --set default database
CREATE USER Shiv FOR LOGIN UniMedical; --create user for login
ALTER ROLE WorkersEntry ADD MEMBER Shiv; --assign use


-- Security 3:
CREATE ROLE VisitorEntry; -- create user defined database role
GRANT UPDATE,INSERT,DELETE -- set update,insert,delete permission
ON Visitors --set table
TO VisitorEntry;
CREATE LOGIN VisitorMedical --set login id
WITH PASSWORD ='87654', -- set password
DEFAULT_DATABASE = CenterForMedical; --set default database
CREATE USER Lion FOR LOGIN VisitorMedical; --create user for login
ALTER ROLE VisitorEntry ADD MEMBER Lion; --assign use


-- Security 4:
CREATE ROLE AppointmentEntry; -- create user defined database role
GRANT UPDATE,INSERT,DELETE -- set update,insert,delete permission
ON Appointments --set table
TO AppointmentEntry;
CREATE LOGIN AppointmentHistory --set login id
WITH PASSWORD ='456789', -- set password
DEFAULT_DATABASE = CenterForMedical; --set default database
CREATE USER App FOR LOGIN AppointmentHistory; --create user for login
ALTER ROLE AppointmentEntry ADD MEMBER App; --assign use
