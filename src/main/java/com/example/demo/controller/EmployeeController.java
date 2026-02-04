package com.example.demo.controller;

import com.example.demo.entities.Employee;
import com.example.demo.service.EmployeeService;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@Controller
public class EmployeeController {

    private final EmployeeService employeeService;

    public EmployeeController(EmployeeService employeeService) {
        this.employeeService = employeeService;
    }

    @GetMapping("/employees")
    public String listEmployees(Model model) {
        List<Employee> listofEmployee =  employeeService.getAllEmployees();
        model.addAttribute("employees", listofEmployee); 
        return "employees"; // JSP file name (employees.jsp)
    }
}
