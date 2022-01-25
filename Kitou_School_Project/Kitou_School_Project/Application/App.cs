using Kitou_School_Project.Controller;
using Kitou_School_Project.View.Create;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Kitou_School_Project.Application
{
    class App
    {
        public static void Run()
        {
            AssignmentController assignmentController = new AssignmentController();
            CourseController courseController = new CourseController();
            StudentController studentController = new StudentController();
            TrainerController trainerController = new TrainerController();


            const int first = -40;
            const int second = -70;
            const int third = -40;
            const int fourth = -10;

            Console.WriteLine();
            Console.ForegroundColor = ConsoleColor.Magenta;
            Console.WriteLine("*! Welcome To Kitou School !*");
            Console.ResetColor();
            Console.WriteLine();
            Console.ForegroundColor = ConsoleColor.DarkGreen;
            Console.WriteLine("Choose an Option");
            Console.WriteLine();
            Console.ResetColor();

            string input = "";

            do
            {
                Console.ForegroundColor = ConsoleColor.DarkBlue;
                Console.WriteLine($"{"------View All DATA-----",first}{"------View Data By Course------",second}{"------Create DATA------",third}{"------EXIT------",fourth}");
                Console.ResetColor();
                Console.ForegroundColor = ConsoleColor.DarkMagenta;
                Console.WriteLine($"{ "1 - View All Students",first}{"5 - View All Students Per Course",second}{"10 - Create a Student",third}{"        E",fourth}");
                Console.WriteLine($"{"2 - View All Courses",first}{"6 - View All Trainers Per Course",second}{"11 - Create a Trainer",third}");
                Console.WriteLine($"{"3 - View All Trainers",first}{"7 - View All Assignments Per Course",second}{"12 - Create an Assignment",third}");
                Console.WriteLine($"{"4 - View All Assignments",first}{"8 - View All Assignments Per Student Per Course",second}{"13 - Create a Course",third}");
                Console.WriteLine($"{"  ",first}{"9 - View All Students That Belong to More than One Courses",second}{"14 - Assign A Student To A Course",third}");
                Console.WriteLine($"{" ",first}{" ",second}{"15 - Assign A Trainer To A Course",third}");
                Console.WriteLine($"{" ",first}{" ",second}{"16 - Assign An Assignment To A Course",third}");
                Console.WriteLine($"{" ",first}{" ",second}{"17 - Assign A Student To A Course To an Assignment",third}");
                input = Console.ReadLine().ToUpper();
                Console.ResetColor();
                Console.Clear();
                switch (input)
                {
                    case "1": studentController.ReadStudents(); break;
                    case "2": courseController.ReadCourses(); break;
                    case "3": trainerController.ReadTrainers(); break;
                    case "4": assignmentController.ReadAssignments(); break;
                    case "5": courseController.ReadAllStudentsPerCourse(); break;
                    case "6": courseController.ReadAllTrainersPerCourse(); break;
                    case "7": courseController.ReadAllAssignmentsPerCourse(); break;
                    case "8": courseController.ReadAllAssignmentsPerStudentPerCourse(); break;
                    case "9": courseController.ReadStudentsToMoreThanOneCourse(); break;
                    case "10": CreateStudent.CreateStudents(); break;
                    case "11": CreateTrainer.CreateTrainers(); break;
                    case "12": CreateAssignment.CreateAssignments(); break;
                    case "13": CreateCourse.CreateCourses(); break;
                    case "14": AssingStudentToACourse.AssignStudentsToACourse(); break;
                    case "15": AssignTrainerToCourse.AssignTrainersToCourse(); break;
                    case "16": AssignAssignmentToCourse.AssignAssignmentsToCourse(); break;
                    case "17": AssignStudentToCourseToAssignment.AssignStudentToCOursesTOAssignment(); break;

                    case "E": Console.WriteLine("You Pressed Exit"); break;
                    default: Console.WriteLine("Wrong Choice! Give: 1 to 19 or E"); break;
                }

            } while (input != "E");
        }
    }
}
