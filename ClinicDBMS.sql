CREATE DATABASE ClinicDBMS;

USE ClinicDBMS;

CREATE TABLE Doctors (
    DoctorID INT PRIMARY KEY,
    FirstName VARCHAR(20),
    LastName VARCHAR(20),
    Specialty VARCHAR(30),
    YearsOfExperience INT
);

CREATE TABLE Patients (
    PatientID INT PRIMARY KEY,
    FirstName VARCHAR(20),
    LastName VARCHAR(20),
    DOB DATE,
    Gender VARCHAR(6)
);

CREATE TABLE Appointments (
    AppointmentID INT PRIMARY KEY,
    DoctorID INT,
    PatientID INT,
    AppointmentDate DATE,
    AppointmentTime TIME,
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID),
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID)
);
