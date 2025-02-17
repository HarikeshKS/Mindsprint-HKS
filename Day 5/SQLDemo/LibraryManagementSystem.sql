Create database LibraryManagementSystem;
use LibraryManagementSystem;
CREATE TABLE Member
(
  MemberID INT NOT NULL,
  Name VARCHAR(255) NOT NULL,
  Email VARCHAR(255) NOT NULL,
  PRIMARY KEY (MemberID)
);

CREATE TABLE Book
(
  BookID INT NOT NULL,
  Title VARCHAR(255) NOT NULL,
  Author VARCHAR(255) NOT NULL,
  PRIMARY KEY (BookID)
);

CREATE TABLE Borrow
(
  BorrowID INT NOT NULL,
  BorrowDate DATE NOT NULL,
  ReturnDate DATE NOT NULL,
  MemberID INT NOT NULL,
  BookID INT NOT NULL,
  PRIMARY KEY (BorrowID),
  FOREIGN KEY (MemberID) REFERENCES Member(MemberID),
  FOREIGN KEY (BookID) REFERENCES Book(BookID)
);