-- show databases
create database testdb;
use testdb;
CREATE TABLE Student
(
  Name VARCHAR(255) NOT NULL,
  sid INT NOT NULL,
  Address VARCHAR(255) NOT NULL,
  Phone INT NOT NULL,
  Email VARCHAR(255) NOT NULL,
  PRIMARY KEY (sid)
);

CREATE TABLE Course
(
  cid INT NOT NULL,
  Name VARCHAR(255) NOT NULL,
  Price INT NOT NULL,
  description VARCHAR(255) NOT NULL,
  PRIMARY KEY (cid)
);

CREATE TABLE Enrollment
(
  Amount INT NOT NULL,
  date DATE NOT NULL,
  eid INT NOT NULL,
  sid INT NOT NULL,
  cid INT NOT NULL,
  PRIMARY KEY (eid),
  FOREIGN KEY (sid) REFERENCES Student(sid),
  FOREIGN KEY (cid) REFERENCES Course(cid)
);