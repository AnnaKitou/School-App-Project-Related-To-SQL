//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Kitou_School_Project
{
    using System;
    using System.Collections.Generic;
    
    public partial class ASSIGNMENT
    {
        public int AssignmentId { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public System.DateTime Submission_Date { get; set; }
        public int Oral_Mark { get; set; }
        public int Total_Mark { get; set; }
        public int CourseId { get; set; }
    
        public virtual COURS COURS { get; set; }
    }
}
