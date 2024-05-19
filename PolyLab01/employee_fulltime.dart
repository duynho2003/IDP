import 'dart:io';

import 'employee.dart';

class EmployeeFulltime extends Employee {
  late double _basicsalary;
  late int _overtime;
  late int _typeOfPosition; // 1: Employee, 2: Director, 3: Head of Department

  final Map<int, String> positionMap = {
    1: "Nhân viên",
    2: "Giám đốc",
    3: "Trưởng phòng",
    0: "Invalid position"
  };

  double get basicSalary => _basicsalary;
  set basicSalary(double value) {
    if (value < 0) {
      throw Exception("Salary must be positive");
    }
    this._basicsalary = value;
  }

  int get overtime => _overtime;
  set overtime(int value) {
    if (value < 0) {
      throw Exception("Salary must be positive");
    }
    this._overtime = value;
  }

  int get typeOfPosition => _typeOfPosition;
  set typeOfPosition(int value) {
    if (value < 1 || value > 3) {
      throw Exception("Must be 1 or 2, or 3");
    }
    this._typeOfPosition = value;
  }

  EmployeeFulltime() {}
  EmployeeFulltime.withAll(String id, String name, String address,
      double basicsalary, int overtime, int typeOfPosition) {
    this.id = id;
    this.name = name;
    this.address = address;
    this.basicSalary = basicsalary;
    // this._basicsalary = basicsalary;
    this.overtime = overtime;
    // this._overtime = overtime;
    this.typeOfPosition = typeOfPosition;
    // this._typeOfPosition = typeOfPosition;
  }

  @override
  void printInfo() {
    super.printInfo();
    print("Basic salary: $basicSalary");
    print("Overtime: $overtime");
    print("Positive: ${positionMap[typeOfPosition]}");
  }

  @override
  void inputInfo() {
    super.inputInfo();
    print("Employee basic salary: ");
    basicSalary = double.parse(stdin.readLineSync() ?? "0");
    print("Employee overtime: ");
    overtime = int.parse(stdin.readLineSync() ?? "0");
    print("Employee positive: ");
    typeOfPosition = int.parse(stdin.readLineSync() ?? "0");
  }
}
