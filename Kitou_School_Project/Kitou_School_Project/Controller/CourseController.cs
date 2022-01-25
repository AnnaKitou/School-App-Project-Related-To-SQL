using Kitou_School_Project.RepositoryService;
using Kitou_School_Project.View;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Kitou_School_Project.Controller
{
    class CourseController
    {
        CourseRepository courseService = new CourseRepository();
        StudentRepository studentService = new StudentRepository();
        public void ReadCourses()
        {
            var courses = courseService.GetAll();
            CourseView.PrintCourses(courses);
        }
        public void ReadAllStudentsPerCourse()
        {
            var courses = courseService.GetAll();
            CourseView.PrintStudentsPerCourse(courses);

        }
        public void ReadAllTrainersPerCourse()
        {
            var courses = courseService.GetAll();
            CourseView.PrintTrainersPerCourse(courses);
        }
        public void ReadAllAssignmentsPerCourse()
        {
            var courses = courseService.GetAll();
            CourseView.PrintAssignmentsPerCourse(courses);

        }
        public void ReadAllAssignmentsPerStudentPerCourse()
        {
            var courses = courseService.GetAll();
            CourseView.PrintAssignmentsPerStudentPerCourse(courses);
        }
        public void ReadStudentsToMoreThanOneCourse()
        {
            var students = studentService.GetAll();
            StudentView.PrintStudentToMoreThanOneCourses(students);
        }
    }
}
