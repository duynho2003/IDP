import 'dart:io';

import 'employee.dart';

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

  EmployeePartTime() {}
  EmployeePartTime.withAll(
      String id, String name, String address, int workHour) {
    this.id = id;
    this.name = name;
    this.address = address;
    this.workHour = workHour;
  }

  @override
  double calculateSalary() {
    return _workHour * 15;
  }
}
