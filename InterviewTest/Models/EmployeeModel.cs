using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace InterviewTest.Models
{
    public class EmployeeModel
    {
        public Guid Id { get; set; }
        [Display(Name = "First Name :")]
        public string FirstName { get; set; }
        [Display(Name = "Last Name")]
        public string LastName { get; set; }
        [Display(Name = "ID Card No. :")]
        public string IdCardNo { get; set; }
        [Display(Name = "Telephone :")]
        public string Telephone { get; set; }
        [Display(Name = "Email :")]
        public string Email { get; set; }
    }
}