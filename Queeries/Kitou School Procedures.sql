Use Kitou_School
--6 Kitou School Procedures
   Create Procedure InsertACourse ( @Title VARCHAR(50), @Stream VARCHAR (30), @Type CHAR (30), @StartDate DATE, @EndDate DATE) AS
   Begin
   Insert Into COURSES (Title ,Stream ,Type ,[Start Date] ,[End Date]) Values (@Title ,@Stream ,@Type , @StartDate , @EndDate)
   End

   Create Procedure InsertAStudent ( @FirstName char(30), @LastName  char(30),@TuitionFees int , @DateOfBirth Date) AS
   Begin
   Insert Into STUDENTS( FirstName, LastName ,TuitionFees , [Date Of Birth]) Values ( @FirstName, @LastName ,@TuitionFees , @DateOfBirth)
   End

   Create Procedure InsertATrainer(@FirstName CHAR(30),@LastName CHAR (30),@Subject VARCHAR(30), @CoursesId int) AS
   Begin
   Insert Into TRAINERS (FirstName,LastName,Subject,CoursesId) Values (@FirstName, @LastName, @Subject,@CoursesId)
   End

   Create Procedure InsertAnAssignment(@Title VARCHAR(50),@Description VARCHAR (50),@Submission_Date DATE,@Oral_Mark INT,@Total_Mark INT,
   @CourseId int) AS
   Begin
   Insert Into ASSIGNMENTS (Title ,Description ,Submission_Date ,Oral_Mark ,Total_Mark ,CourseId ) 
   Values (@Title ,@Description ,@Submission_Date ,@Oral_Mark ,@Total_Mark , @CourseId)
   End


   Create Procedure AssignAStudentToACourse (@StudentId int,@CourseId int) AS
   Begin
   Insert Into STUDENT_COURSE(StudentId ,CourseId) Values (@StudentId ,@CourseId)
   End


