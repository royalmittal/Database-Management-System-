CREATE DATABASE SchoolDB;

USE SchoolDB;

CREATE TABLE Students (
  StudentID INT PRIMARY KEY,
  FirstName VARCHAR(100),
  LastName VARCHAR(100),
  Age INT,
  Grade INT
);

CREATE TABLE Teachers (
  TeacherID INT PRIMARY KEY,
  FirstName VARCHAR(100),
  LastName VARCHAR(100),
  Subject VARCHAR(100)
);

CREATE TABLE Courses (
  CourseID INT PRIMARY KEY,
  CourseName VARCHAR(100),
  TeacherID INT,
  FOREIGN KEY (TeacherID) REFERENCES Teachers(TeacherID)
);

CREATE TABLE Enrollments (
  StudentID INT,
  CourseID INT,
  FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
  FOREIGN KEY (CourseID) REFERENCES Courses(CourseID),
  PRIMARY KEY (StudentID, CourseID)
);
