-- Trigger 1
CREATE TRIGGER trg_UpdateReviews
ON Billing
56
AFTER INSERT
AS
BEGIN
UPDATE Workers
SET Reviews = 'Positive'
FROM Workers
INNER JOIN inserted ON Workers.WorkersID = inserted.PatientID
END

-- Trigger 2
CREATE TRIGGER tr_Staff_Workers_Insert
ON Staff
FOR INSERT
AS
BEGIN
DECLARE @WorkersID INT
SELECT @WorkersID = WorkersID FROM inserted
UPDATE Workers
SET Department = 'Staff'
WHERE WorkersID = @WorkersID
END

-- Trigger 3
CREATE TRIGGER update_staff_status
ON Workers
AFTER UPDATE
AS
IF UPDATE(ContractType)
BEGIN
UPDATE Staff
SET Status = 'Inactive'
WHERE WorkersID IN (SELECT WorkersID FROM inserted WHERE ContractType =
'Part-Time')
END;

-- Trigger 4
CREATE TRIGGER UpdatingReviews
ON Billing
AFTER INSERT
AS
BEGIN
UPDATE Workers
SET Reviews = 'Negative'
FROM Workers
INNER JOIN inserted ON Workers.WorkersID = inserted.PatientID
END
