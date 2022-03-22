package com.mvc_spring.mwa;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/employee")
public class MyController {

    @RequestMapping("/")
    public String showFirstView(){
        return "first-view";
    }

    @RequestMapping("/askDetails")
    public String askEmployeeDetails(){

        return "ask-emp-details-view";
    }

    @RequestMapping("/askDetails2")
    public String askEmployeeDetails2(Model model){
        Employee emp = new Employee();
        emp.setName("Default name: Ivan");
        emp.setSurname("Default surname: Petrov");
        emp.setSalary(499);
        model.addAttribute("employee", emp);
        return "ask-emp-details-view2";
    }

//    @RequestMapping("showDetails")
//    public String showEmpDetails(){
//
//        return "show-emp-details-view";
//    }


//    @RequestMapping("/showDetails")
//    public String showEmpDetails(HttpServletRequest request, Model model){
//        String empName = request.getParameter("employeeName");
//        empName = "Mr." + empName;
//        model.addAttribute("nameAttribute", empName);
//
//        return "show-emp-details-view";
//    }


    @RequestMapping("/showDetails")
    public String showEmpDetails(
            @RequestParam("employeeName")String empName,
            Model model)
    {
//        String empName = request.getParameter("employeeName");
        empName = "Mr." + empName + " !";
        model.addAttribute("nameAttribute", empName);

        return "show-emp-details-view";
    }

    @RequestMapping("/showDetails2")
    public String showEmpDetails2(@ModelAttribute("employee_attribute") Employee employee)
    {
        String name = employee.getName();
        employee.setName("Dr. " + name);
        employee.setSalary(employee.getSalary()*10);
        return "show-emp-details-view2";
    }

}
