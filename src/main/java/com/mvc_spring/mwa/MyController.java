package com.mvc_spring.mwa;

//import jakarta.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

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
        Employee employee = new Employee();
        //employee.setName("Default name: Ivan");
        employee.setSurname("Default surname: Petrov");
        employee.setSalary(499);
        model.addAttribute("employee", employee);
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
    public String showEmpDetails2(
            @Valid @ModelAttribute("employee") Employee employee,
                                  BindingResult bindingResult)
    {
        System.out.println("Length surname is: " + employee.getSurname().length());

        if(bindingResult.hasErrors()){
            return "ask-emp-details-view2";
        }else {
//            String name = employee.getName();
//            employee.setName("Dr. " + name);
//            if (employee.getName().length()<3){
//                return "ask-emp-details-view2";
//            }
            employee.setSalary(employee.getSalary() * 3);
            return "show-emp-details-view2";
        }
    }

}
