using InterviewTest.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using InterviewTest.Entities;

namespace InterviewTest.Controllers
{
    public class EmployeeController : Controller
    {
        public ActionResult Index()
        {
            interview_testEntities entities = new interview_testEntities();
            List<Employee> model = entities.Employee.ToList();
            return View(model);
        }

        public ActionResult Add()
        {
            return View();
        }

        public ActionResult Edit(string Id)
        {
            interview_testEntities entities = new interview_testEntities();
            Guid.TryParse(Id, out Guid guid);
            var emp = entities.Employee.Find(guid);
            EmployeeModel model = new EmployeeModel()
            {
                Id = emp?.Id ?? Guid.Empty,
                FirstName = emp?.FirstName,
                LastName = emp?.LastName,
                IdCardNo = emp?.IdCardNo,
                Telephone = emp?.Telephone,
                Email = emp?.Email,
            };
            ViewBag.Title = $"Edit - {emp?.FirstName}";
            return View("~/Views/Employee/Add.cshtml", model);
        }


        public ActionResult Delete(string Id)
        {
            interview_testEntities entities = new interview_testEntities();
            Guid.TryParse(Id, out Guid guid);
            var emp = entities.Employee.Find(guid);
            if (emp != null)
            {
                entities.Employee.Remove(emp);
                entities.SaveChanges();
            }
            return Redirect("~/Employee/Index");
        }
        [HttpPost]
        public ActionResult Save(EmployeeModel model)
        {
            model.FirstName = model.FirstName;
            interview_testEntities entities = new interview_testEntities();
            if (model.Id == Guid.Empty)
            {
                entities.Employee.Add(new Employee()
                {
                    Id = Guid.NewGuid(),
                    FirstName = model.FirstName,
                    LastName = model.LastName,
                    IdCardNo = model.IdCardNo,
                    Telephone = model.Telephone,
                    Email = model.Email,
                    CreateDate = DateTime.Now,
                    UpdateDate = DateTime.Now,
                    Revision = 0,
                });
            }
            else
            {
                var emp = entities.Employee.Find(model.Id);
                emp.FirstName = model.FirstName;
                emp.LastName = model.LastName;
                emp.IdCardNo = model.IdCardNo;
                emp.Telephone = model.Telephone;
                emp.Email = model.Email;
                emp.UpdateDate = DateTime.Now;
                emp.Revision = emp.Revision + 1;
            }
            entities.SaveChanges();

            return Redirect("~/Employee/Index");
        }

    }
}