import 'employee.dart';
import 'employee_fulltime.dart';

void main() {
  Employee employeeOne = Employee();
  Employee employeeTwo = Employee.withAll("1", "ABC", "590");
  Employee employeeThree = Employee.autoId("Binh", "590");

  employeeOne.inputInfo();
  employeeOne.printInfo();
  employeeTwo.printInfo();
  employeeThree.printInfo();

  // Employee employeeFour = EmployeeFulltime();
  // employeeFour.inputInfo();
  // employeeFour.printInfo();

  Employee employeeFive =
      EmployeeFulltime.withAll("111", "Tommy", "509", 1000.21, 23, 1);
  employeeFive.printInfo();
}
