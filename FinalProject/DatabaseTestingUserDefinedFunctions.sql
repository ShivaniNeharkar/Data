-- USER DEFINED FUNCTIONS 1
CREATE FUNCTION InsurCov
(@InsuranceID INT)
RETURNS INT
BEGIN
RETURN (SELECT InsuranceID FROM CoverageOfInsurance
WHERE InsuranceID=@InsuranceID)
END;
SELECT PatientID, InsuranceCoverages
FROM CoverageOfInsurance
WHERE InsuranceID=dbo.InsurCov(9);

-- USER DEFINED FUNCTIONS 2
CREATE FUNCTION EmpInfo
(@EmpID INT)
RETURNS INT
BEGIN
RETURN (SELECT WorkersID
FROM Workers
WHERE WorkersID=@EmpID)
END;
SELECT WorkersID, WorkersSalary, Benefits, ContractType
FROM Workers
WHERE WorkersID=dbo.EmpInfo(3);


-- USER DEFINED FUNCTIONS 3
CREATE FUNCTION InsuranceInfo
(@PatientID INT)
RETURNS INT
BEGIN
RETURN (SELECT PatientID
FROM PatientInfo
WHERE PatientID=@PatientID)
END;
SELECT InsuranceID, PatientID, InsuranceCompanyName, InsuranceCoverages
FROM CoverageOfInsurance
WHERE PatientID=dbo.InsuranceInfo(4);


-- USER DEFINED FUNCTIONS 4:
CREATE FUNCTION BillingInfo
(@PatientID INT)
RETURNS INT
BEGIN
RETURN (SELECT PatientID
FROM PatientInfo
WHERE PatientID=@PatientID)
END;
SELECT BillingID, PatientID, Payor, PaymentMethod
FROM Billing
WHERE PatientID=dbo.BillingInfo(1);
