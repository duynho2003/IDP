import 'dart:io';

import 'Employee.dart';

class EmployeePartTime extends Employee {
  late int _workHour;

  int get workHour => _workHour;
  set workHour(int value) => _workHour = value;

  @override
  void inputInfo() {
    super.inputInfo();

    print("Enter work hour: ");
    String? result = stdin.readLineSync();
    if (result != null) {
      _workHour = int.parse(result);
    }
  }

  @override
  void printInfo() {
    super.printInfo();

    print("Work hour: $_workHour");
  }

  @override
  double calculateSalary() {
    return _workHour * 15;
  }
}
