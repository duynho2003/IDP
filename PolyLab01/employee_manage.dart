import 'dart:io';

import 'employee.dart';
import 'employee_fulltime.dart';
import 'employee_parttime.dart';

class EmployeeManage {
  List<Employee> listEmployees = [];
  late int _maxEmployee;
  int nextEmployee = 0;

  EmployeeManage(int numOfStaff) {
    this._maxEmployee = numOfStaff;
  }

  void addEmployee() {
    //them employee fulltime or partime neu listEmployee.count < max;
    //in thong bao neu da full;
    // cho phep nhap nhieu employee;
    do {
      print("New employee (P: Parttime / F: Fulltime / D: Done)");
      String empType = stdin.readLineSync() ?? "NA";
      if (empType == "P") {
        Employee employee = EmployeePartTime();
        employee.inputInfo();
        listEmployees.add(employee);
      } else if (empType == "F") {
        Employee employee = EmployeeFullTime();
        employee.inputInfo();
        listEmployees.add(employee);
      } else if (empType == "D") {
        break;
      } else {
        print("incorrect choice");
      }
    } while (listEmployees.length < _maxEmployee);
  }

  void showEmployees() {
    for (var employee in listEmployees) {
      employee.printInfo();
    }
  }

  void showParttimeEmployee() {
    for (var employee in listEmployees) {
      if (employee is EmployeePartTime) {
        employee.printInfo();
      }
    }
  }

  void showFulltimeEmployee() {
    for (var employee in listEmployees) {
      if (employee is EmployeeFullTime) {
        employee.printInfo();
      }
    }
  }

  //show employeee have highest salary.
  void showEmployeeHighestSalary(){
    double highestSalary = 0;
    Employee? employeeHighestSalary = null;
    for (var employee in listEmployees)  {
      if (employee.calculateSalary() > highestSalary){
        highestSalary = employee.calculateSalary();
        employeeHighestSalary = employee;
      }
    }
    if (employeeHighestSalary != null){
      print("Highest salary: $highestSalary");
      employeeHighestSalary.printInfo();
    } else {
      print("Not employee!");
    }
  }

  Employee? findEmployeeById(String id) {
    for (var emp in listEmployees){
      if (emp.id == id) {
        return emp;
      }
    }
    return null;
  }
}
