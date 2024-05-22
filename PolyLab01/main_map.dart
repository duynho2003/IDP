import 'dart:io';

import 'employee.dart';
import 'employee_manage_map.dart';

void main() {
  // Employee employee = Employee.withInfo(id: "1");
  // Employee employeeA = Employee.withInfo(id: "AAA");
  // Employee employeeB = Employee.withInfo(id: "460");
  // Employee emp = Employee.withAll(id: "469");
  //  List
  // EmployeeManage employeeManage = EmployeeManage(5);
  //  HashMap
  EmployeeManageMap employeeManager = EmployeeManageMap(5);
  while (true) {
    print("Welcome Dart Programming");
    print(("1. Add Employee"));
    print(("2. Show employee list"));
    print(("3. Show parttime list"));
    print(("4. Show fulltime list"));
    print(("5. Show employee highest salary"));
    print(("6. Find employee by ID"));
    print(("7. Exit"));
    var strChoice = stdin.readLineSync() ?? "0";
    int choice = int.parse(strChoice);
    if (choice == 7) {
      break;
    }
    switch (choice) {
      case 1:
        employeeManager.addEmployee();
      case 2:
        employeeManager.showEmployees();
      case 3:
        employeeManager.showEmployeePartTime();
      case 4:
        employeeManager.showFullTimeEmployee();
      case 5:
        employeeManager.showEmployeeHighestSalary();
      case 6:
        print("Enter employee id:");
        String id = stdin.readLineSync() ?? "";
        Employee? employee = employeeManager.findEmployeeById(id);
        employee != null ? employee.printInfo() : print("Not found!");
      case 7:
        print("Exit");
        break;
      default:
        print("Invalid choice");
    }
  }
  // Employee employeeOne = Employee();
  // Employee employeeTwo = Employee.withAll("1", "ABC", "590");
  // Employee employeeThree = Employee.autoId("Binh", "590");

  // employeeOne.inputInfo();
  // employeeOne.printInfo();
  // employeeTwo.printInfo();
  // employeeThree.printInfo();

  // // Employee employeeFour = EmployeeFulltime();
  // // employeeFour.inputInfo();
  // // employeeFour.printInfo();

  // Employee employeeFive =
  //     EmployeeFulltime.withAll("111", "Tommy", "509", 1000.21, 23, 1);
  // employeeFive.printInfo();
}
