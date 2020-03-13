USE TSQLV4;
GO

--patient
DROP TABLE IF EXISTS dbo.Patients;
CREATE TABLE dbo.Patients
(
	patientID	INT				NOT NULL,
	demographic VARCHAR(50)		NOT NULL,
	bloodtype	VARCHAR(50)		NOT NULL,
	allergy		VARCHAR(50)		NOT NULL,
	CONSTRAINT pk_Patients PRIMARY KEY(patientID)
)
INSERT INTO dbo.Patients VALUES (1, 'demographic1', 'A', 'NKA');
INSERT INTO dbo.Patients VALUES (2, 'demographic2', 'B', 'NKA');
INSERT INTO dbo.Patients VALUES (3, 'demographic3', 'O', 'NKA');
--provider
DROP TABLE IF EXISTS dbo.Providers;
CREATE TABLE dbo.Providers
(
	providerID	INT				NOT NULL,
	demographic VARCHAR(50)		NOT NULL,
	specialty	VARCHAR(50)		NOT NULL,
	patientID	INT				NOT NULL, 
	CONSTRAINT pk_Providers PRIMARY KEY(providerID),
	CONSTRAINT fk_Providers_Patients FOREIGN KEY(patientID) REFERENCES dbo.Patients(patientID)
)
INSERT INTO dbo.Providers VALUES (1, 'demographic1', 'Family Practitioner', 1);
INSERT INTO dbo.Providers VALUES (2, 'demographic2', 'Cardiology', 2);
INSERT INTO dbo.Providers VALUES (3, 'demographic3', 'Optometry',3);
--issurance
DROP TABLE IF EXISTS dbo.Issurance;
CREATE TABLE dbo.Issurance
(
	policyID	INT			NOT NULL,
	patientID	INT			NOT NULL,
	claim		VARCHAR(50)	NOT NULL,
	bill		INT			NOT NULL,
	contact		VARCHAR(50)	NOT NULL,
	CONSTRAINT pk_Issurance PRIMARY KEY(policyID),
	CONSTRAINT fk_Issurance_Patients FOREIGN KEY(patientID) REFERENCES dbo.Patients(patientID)
)
INSERT INTO dbo.Issurance VALUES (1, 1, 'claim1', 100, 'contact1');
INSERT INTO dbo.Issurance VALUES (2, 2, 'claim2', 200, 'contact2');
INSERT INTO dbo.Issurance VALUES (3, 3, 'claim3', 300, 'contact3');
--immunization
DROP TABLE IF EXISTS dbo.Immunization;
CREATE TABLE dbo.Immunizaiton
(
	immunizationID		INT				NOT NULL,
	patientID			INT				NOT NULL,
	immunizationType	VARCHAR(50)		NOT NULL,
	issueDate			VARCHAR(50)		NOT NULL,
	siteAdministered	VARCHAR(50)		NOT NULL,
	manufacture			VARCHAR(50)		NOT NULL,
	serialNumber		VARCHAR(50)		NOT NULL,
	CONSTRAINT pk_Immunization PRIMARY KEY(immunizationID),
	CONSTRAINT fk_Immunization_Patients FOREIGN KEY(patientID) REFERENCES dbo.Patients(patientID)
)
INSERT INTO dbo.Immunizaiton VALUES (1, 1, 'MMR', '20200101', 'Left Arm', 'Umbrella', '001');
INSERT INTO dbo.Immunizaiton VALUES (2, 2, 'FLU', '20200102', 'Right Arm', 'Tricell', '002');
INSERT INTO dbo.Immunizaiton VALUES (3, 3, 'YF', '20200103', 'Left Arm', 'Neo-Umbrella', '003');
--lab
DROP TABLE IF EXISTS dbo.Lab;
CREATE TABLE dbo.Lab
(
	labID		INT			NOT NULL,
	patientID	INT			NOT NULL,
	labType		VARCHAR(50)	NOT NULL,
	drawnDate	VARCHAR(50)	NOT NULL,
	result		VARCHAR(50)	NOT NULL,
	reference	VARCHAR(50)	NOT NULL,
	CONSTRAINT pk_Lab PRIMARY KEY(labID),
	CONSTRAINT fk_Lab_Patients FOREIGN KEY(patientID) REFERENCES dbo.Patients(patientID)
)
INSERT INTO dbo.Lab VALUES (1, 1, 'LIPID', '20200101', 'result1', 'reference1');
INSERT INTO dbo.Lab VALUES (2, 2, 'CBC', '20200102', 'result2', 'reference2');
INSERT INTO dbo.Lab VALUES (3, 3, 'FBS', '20200103', 'result3', 'reference3');
--history
DROP TABLE IF EXISTS dbo.History;
CREATE TABLE dbo.History
(
	encounterID		INT			NOT NULL,
	patientID		INT			NOT NULL,
	providerID		INT			NOT NULL,
	vitalHistory	VARCHAR(50)	NOT NULL,
	chiefComplaint	VARCHAR(50)	NOT NULL,
	diagnose		VARCHAR(50)	NOT NULL,
	prescription	VARCHAR(50),
	CONSTRAINT pk_History PRIMARY KEY(encounterID),
	CONSTRAINT fk_History_Patients FOREIGN KEY(patientID) REFERENCES dbo.Patients(patientID),
	CONSTRAINT fk_History_Providers FOREIGN KEY(providerID) REFERENCES dbo.Providers(providerID)
)
INSERT INTO dbo.History VALUES (1, 1, 1, 'history1', 'complaint1', 'diagnose1', '');
INSERT INTO dbo.History VALUES (2, 2, 2, 'history2', 'complaint2', 'diagnose2', '');
INSERT INTO dbo.History VALUES (3, 3, 3, 'history3', 'complaint3', 'diagnose3', '');
--examination
DROP TABLE IF EXISTS dbo.Exam;
CREATE TABLE dbo.Exam
(
	examID		INT			NOT NULL,
	patientID	INT			NOT NULL,
	providerID	INT			NOT NULL,
	note		VARCHAR(50)	NOT NULL,
	CONSTRAINT pk_Exam PRIMARY KEY(examID),
	CONSTRAINT fk_Exam_Patients FOREIGN KEY(patientID) REFERENCES dbo.Patients(patientID),
	CONSTRAINT fk_Exam_Providers FOREIGN KEY(providerID) REFERENCES dbo.Providers(providerID)
)
--future appointment
DROP TABLE IF EXISTS dbo.Appointment;
CREATE TABLE dbo.Appointment
(
	appointmentID		INT			NOT NULL,
	patientID			INT			NOT NULL,
	providerID			INT			NOT NULL,
	appointmentType		VARCHAR(50)	NOT NULL,
	appointmentTime		VARCHAR(50)	NOT NULL,
	appointmentReq		VARCHAR(50)	NOT NULL,
	CONSTRAINT pk_Appointment PRIMARY KEY(appointmentID),
	CONSTRAINT fk_Appointment_Patients FOREIGN KEY(patientID) REFERENCES dbo.Patients(patientID),
	CONSTRAINT fk_Appointment_Providers	FOREIGN KEY(providerID)	REFERENCES dbo.Providers(providerID)
)
INSERT INTO dbo.Appointment VALUES (1, 1, 1, 'Family Practice', '20200201', 'req1');
INSERT INTO dbo.Appointment VALUES (2, 2, 2, 'Cardiology', '20200202', 'req2');
INSERT INTO dbo.Appointment VALUES (3, 3, 3, 'Optometry', '20200203', 'req3');
--med
DROP TABLE IF EXISTS dbo.Medication;
CREATE TABLE dbo.Medication
(
	medID		INT			NOT NULL,
	patientID	INT			NOT NULL,
	providerID	INT			NOT NULL,
	encounterID	INT			NOT NULL,
	medName		VARCHAR(50)	NOT NULL,
	dose		VARCHAR(50)	NOT NULL,
	issueDate	VARCHAR(50)	NOT NULL,
	CONSTRAINT pk_Medication PRIMARY KEY(medID),
	CONSTRAINT fk_Medication_Patients FOREIGN KEY(patientID) REFERENCES dbo.Patients(patientID),
	CONSTRAINT fk_Medication_Providers FOREIGN KEY(providerID) REFERENCES dbo.Providers(providerID)
)
INSERT INTO dbo.Medication VALUES (1, 1, 1 , 1, 'med1', 'dose1', '20200201');
INSERT INTO dbo.Medication VALUES (2, 2, 2 , 2, 'med2', 'dose2', '20200202');
INSERT INTO dbo.Medication VALUES (3, 3, 3 , 3, 'med3', 'dose3', '20200203');