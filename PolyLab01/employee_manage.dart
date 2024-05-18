import 'dart:io';

import 'employee.dart';
import 'employee_fulltime.dart';

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
    if (listEmployees.length >= _maxEmployee) {
      print("Full");
      return;
    }

    print("Choose employee type:");
    print("1. Full-time");
    int choice = int.parse(stdin.readLineSync() ?? "0");

    switch (choice) {
      case 1:
        EmployeeFulltime newEmployee = EmployeeFulltime.withAll(
            // Generate a unique ID (replace with your logic)
            "FT-" + (nextEmployee++).toString().padLeft(4, '0'),
            "",
            "",
            0.0,
            0,
            1);
        print("Enter employee details:");

        newEmployee.name = stdin.readLineSync() ?? "";
        newEmployee.address = stdin.readLineSync() ?? "";
        newEmployee.basicSalary = double.parse(stdin.readLineSync() ?? "0.0");
        newEmployee.overtime = int.parse(stdin.readLineSync() ?? "0");

        listEmployees.add(newEmployee);
        print("Full-time employee added successfully.");
        break;
      default:
        print("Invalid choice. Please select a valid employee type.");
    }
  }
}
