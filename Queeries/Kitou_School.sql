--1 - 4 Answers
--Create the Database
Create Database Kitou_School;

--Create Tables
USE Kitou_School;

CREATE TABLE STUDENTS(
	StudentId int NOT NULL Primary Key Identity(1,1),
	FirstName CHAR(30) NOT NULL,
	LastName CHAR (30) NOT NULL,
	TuitionFees int NOT NULL,
	[Date Of Birth] date NOT NULL
);
CREATE TABLE COURSES(
	CourseId int NOT NULL Primary Key Identity(1,1),
	Title VARCHAR(50) NOT NULL,
	Stream VARCHAR (30) NOT NULL,
	Type CHAR (30) NOT NULL,
	[Start Date] DATE NOT NULL,
	[End Date] DATE NOT NULL
);

CREATE TABLE STUDENT_COURSE(
	CourseId int NOT NULL,
	StudentId int NOT NULL,
	PRIMARY KEY (CourseId,StudentId),
	CONSTRAINT fk_Course_Id1 FOREIGN KEY (CourseId) REFERENCES COURSES (CourseId),
	CONSTRAINT fk_Student_Id FOREIGN KEY (StudentId) REFERENCES STUDENTS (StudentId)
);

CREATE TABLE TRAINERS(
	TrainerId int NOT NULL Primary Key Identity(1,1),
	FirstName CHAR(30) NOT NULL,
	LastName CHAR (30) NOT NULL,
	Subject VARCHAR (30) NOT NULL ,
	CoursesId INT ,
	CONSTRAINT fk_Course_Id FOREIGN KEY (CoursesId) REFERENCES COURSES (CourseId)
);

CREATE TABLE ASSIGNMENTS(
	AssignmentId int NOT NULL Primary Key Identity(1,1),
	Title VARCHAR(50) NOT NULL,
	Description VARCHAR (50) NOT NULL,
    Submission_Date DATE  NOT NULL,
	Oral_Mark INT NOT NULL,
	Total_Mark INT NOT NULL,
	CourseId INT NOT NULL,
	CONSTRAINT fk_CourseId FOREIGN KEY (CourseId) REFERENCES COURSES (CourseId)
);

--INSERT INTO THE TABLES
INSERT INTO STUDENTS( FirstName, LastName ,TuitionFees , [Date Of Birth]) 
 VALUES 
 ('Anna','Kitou',2500, '1989-10-16'),
 ('Ioanna','Kollia',2200, '1989-11-19'),
 ('Despoina','Gkogkou',2600, '1990-12-12'),
 ('Vasiliki','Kipou',1400, '1987-11-16'),
 ('Giorgos','Kalou',2800, '1989-01-16'),
 ('Thanos','Kakou',2600, '1999-10-16'),
 ('Takis','Sotis',2900, '1994-10-16'),
 ('Makis','Volanis',1500, '1969-12-15'),
 ('Lakis','Trotas',2500, '1989-11-21'),
 ('Sakis','Tsotas',2500, '1989-05-22'),
 ('Andreas','Koukis',1700, '1986-02-16'),
 ('Giannis','Sokos',2600, '1987-04-16'),
 ('Artemis','Siokos',2800, '1988-08-16'),
 ('Maria','Avgerinou',2560, '1988-10-16'),
 ('Ioanna','Papadopoulou',2780, '1981-11-16'),
 ('Eleni','Ioannou',2340, '1980-12-16'),
 ('Kostas','Dagklis',2340, '1979-09-16'),
 ('Dionisis','Dionisiou',2300, '1978-10-16'),
 ('Lampros','Krionas',3500, '1983-10-16'),
 ('Christos','Karamo',2900, '1993-10-16');


 INSERT INTO COURSES ( Title, Stream, Type, [Start Date], [End Date]) 
 VALUES 
 ('C#','CB-7','Full Time','2019-01-02','2019-03-02'),
 ('C#','CB-8','Full Time','2020-01-02','2020-03-02'),
 ('C#','CB-8','Part Time','2020-01-02','2020-06-02'),
 ('Javascript','CB-9','Full Time','2021-01-02','2021-03-02'),
 ('Javascript','CB-9','Part Time','2021-01-02','2021-06-02'),
 ('C++','CB-10','Full Time','2021-02-02','2021-05-02');


  INSERT INTO TRAINERS VALUES 
  ('Artemis','Kim','Javascript',3),
  ('Maria','Vasilikou','Python',4),
  ('Stella','Kitou','C++',5),
  ('Ioanna','Krommidha','C++',1),
  ('Giorgos','Vasileiou','C',2),
  ('Ioannis','Kafedakis','C#',6);

  INSERT INTO ASSIGNMENTS VALUES
  ('First Steps C#','Basics In C#','2020-01-30',50,100,1),
  ('Project A','C# big Project-Part A','2020-02-28',40,100,1),
  ('Project B','C# big Project-Part B','2020-03-30',60,100,1),
  ('First Steps C#','Basics In C#','2020-02-28',50,100,2),
  ('Project A','C# big Project-Part A','2020-04-30',40,100,2),
  ('Project B','C# big Project-Part B','2020-06-30',60,100,2),
  ('First Steps JS','Basics In Javascript','2021-01-30',80,100,3),
  ('Project A','Javascript big Project-Part A','2021-02-28',50,100,3),
  ('Project B','avascript big Project-Part B','2021-03-30',60,100,3),
  ('First Steps JS','Basics In Javascript','2021-02-28',70,100,4),
  ('Project A','Javascript big Project-Part A','2021-04-30',40,100,4),
  ('Project B','avascript big Project-Part B','2021-06-30',60,100,4),
  ('First Steps C++','Basics In C++','2021-02-28',50,100,5),
  ('Project A','C++big Project-Part A','2021-03-30',40,100,5),
  ('Project B','C++ big Project-Part B','2021-05-30',60,100,5),
  ('First Steps C++','Basics In C++','2021-02-28',80,100,6),
  ('Project A','C++ big Project-Part A','2021-06-30',70,100,6),
  ('Project B','C++ big Project-Part B','2021-08-30',60,100,6);

  INSERT INTO STUDENT_COURSE VALUES
  (1,1),
  (1,2),
  (1,3),
  (1,4),
  (1,5),
  (2,6),
  (2,7),
  (2,8),
  (2,9),
  (2,10),
  (3,11),
  (3,12),
  (3,13),
  (3,14),
  (3,15),
  (4,16),
  (4,17),
  (4,18),
  (4,19),
  (4,20),
  (5,1),
  (5,6),
  (5,2),
  (5,8),
  (5,3),
  (6,9),
  (6,7),
  (6,4),
  (6,5),
  (6,10);


--5 Answers
  --OUTPUT LISTS

  --LIST OF STUDENTS
  CREATE VIEW ListOfStudents As Select * From STUDENTS;

  Select * From  ListOfStudents;

   --LIST OF TRAINERS
  CREATE VIEW ListOfTrainers As Select * From TRAINERS;

  Select * From  ListOfTrainers;

  --LIST OF ASSIGNMENTS
   CREATE VIEW ListOfAssignments As Select * From ASSIGNMENTS;

  Select * From  ListOfAssignments;

    --LIST OF COURSES
   CREATE VIEW ListOfCourses As Select * From COURSES;

  Select * From  ListOfCourses;

  --LIST OF STUDENTS PER COURSE
  CREATE VIEW StudentsPerCourse As
  Select c.CourseId, c.Title, c.Type, s.StudentId , s.FirstName, s.LastName FROM STUDENTS s
  Inner JOIN STUDENT_COURSE sc
  ON s.StudentId=sc.StudentId
  Inner Join COURSES c
  ON c.CourseId=sc.CourseId;

  Select * From StudentsPerCourse;

    --LIST OF TRAINERS PER COURSE
  Select c.CourseId, c.Title, c.Type, t.TrainerId , t.FirstName,t.LastName FROM COURSES c
  Inner Join TRAINERS t ON t.CoursesId=c.CourseId 
  Order by c.CourseId;

--LIST OF Assignments PER COURSE
  Select c.CourseId, c.Title, c.Type, a.AssignmentId, a.Title, a.Description, a.Submission_Date FROM COURSES c
  Inner Join ASSIGNMENTS a ON a.CourseId=c.CourseId 
  Order by c.CourseId;

  --LIST OF Assignments PER COURSE PER Students

  Create View AssignmentsPerStudentsPerCourse AS
  Select c.CourseId, c.Title, c.Type, s.StudentId, s.FirstName, s.LastName,a.AssignmentId, a.Title AS Titlos, a.Description FROM STUDENTS s
   Inner JOIN STUDENT_COURSE sc
  ON s.StudentId=sc.StudentId
  Inner Join COURSES c
  ON c.CourseId=sc.CourseId
  Inner Join ASSIGNMENTS a 
  ON a.CourseId=c.CourseId;

  Select * From AssignmentsPerStudentsPerCourse;

  --LIST OF Students To more than One Courses
 Create View StudentsToMoreThanOneCourse AS
 Select s.StudentId, s.FirstName, s.LastName, COUNT(c.CourseId) AS NumberOfCourses from STUDENTS s
   Inner JOIN STUDENT_COURSE sc
  ON s.StudentId=sc.StudentId
  Inner Join COURSES c
   ON c.CourseId=sc.CourseId
   Group By s.StudentId, s.FirstName, s.LastName 
   Having COUNT(c.CourseId)>1;

   Select*From StudentsToMoreThanOneCourse;

