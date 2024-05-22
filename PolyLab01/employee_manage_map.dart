import 'dart:collection';
import 'dart:io';

import 'employee.dart';
import 'employee_fulltime.dart';
import 'employee_parttime.dart';

class EmployeeManageMap {
  Map<String, Employee> mapEmployee = HashMap();
  late int _maxEmployee;
  int nextEmployee = 0;

  EmployeeManageMap(int numOfStaff) {
    this._maxEmployee = numOfStaff;
  }

  void addEmployee() {
    do {
      print("New employee (P: Parttime / F: Fulltime / D: Done)");
      String empType = stdin.readLineSync() ?? "NA";
      if (empType == "P") {
        Employee employee = EmployeePartTime() as Employee;
        employee.inputInfo();
        mapEmployee[employee.id] = employee;
      } else if (empType == "F") {
        Employee employee = EmployeeFullTime();
        employee.inputInfo();
        mapEmployee[employee.id] = employee;
      } else if (empType == "D") {
        break;
      } else {
        print("Incorrect choice");
      }
    } while (mapEmployee.length < _maxEmployee);
  }

  void showEmployees() {
    for (var employee in mapEmployee.values) {
      employee.printInfo();
    }
  }

  void showEmployeePartTime() {
    for (var employee in mapEmployee.values) {
      if (employee is EmployeePartTime) {
        employee.printInfo();
      }
    }
  }

  void showFullTimeEmployee() {
    for (var employee in mapEmployee.values) {
      if (employee is EmployeeFullTime) {
        employee.printInfo();
      }
    }
  }

  void showEmployeePartTimeSalary() {
    double highestSalary = 0;
    Employee? employeeHighest = null;
    for (var employee in mapEmployee.values) {
      if (employee.calculateSalary() > highestSalary) {
        highestSalary = employee.calculateSalary();
        employeeHighest = employee;
      }
    }
    if (employeeHighest != null) {
      print("Highest salary: $highestSalary");
      employeeHighest.printInfo();
    } else {
      print("Not employee");
    }
  }

  //show employeee have highest salary.
  void showEmployeeHighestSalary() {
    double highestSalary = 0;
    Employee? employeeHighestSalary = null;
    for (var employee in mapEmployee.values) {
      if (employee.calculateSalary() > highestSalary) {
        highestSalary = employee.calculateSalary();
        employeeHighestSalary = employee;
      }
    }
    if (employeeHighestSalary != null) {
      print("Highest salary: $highestSalary");
      employeeHighestSalary.printInfo();
    } else {
      print("Not employee!");
    }
  }

  Employee? findEmployeeById(String id) {
    for (var employee in mapEmployee.values) {
      if (employee.id == id) {
        return employee;
      }
    }

    //Return by key (id)
    for (var key in mapEmployee.keys) {
      if (key == id) {
        return mapEmployee[key];
      }
    }
    return null;
  }
}
