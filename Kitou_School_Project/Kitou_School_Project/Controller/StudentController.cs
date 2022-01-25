using Kitou_School_Project.RepositoryService;
using Kitou_School_Project.View;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Kitou_School_Project.Controller
{
    class StudentController
    {
        StudentRepository studentService = new StudentRepository();
        public void ReadStudents()
        {
            var students = studentService.GetAll();
            StudentView.PrintStudents(students);
        }
    }
}
