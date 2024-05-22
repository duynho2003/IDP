import 'dart:io';

import 'person.dart';

class Student extends Person {
  late String _studentId;
  late double _gpa;
  late String _email;

  String get studentId => this._studentId;
  String get email => this._email;
  double get gpa => this._gpa;

  set studentId(String value) {
    if (value.length < 8) {
      throw Exception("Student ID must be 8 characters long.");
    }
    this._studentId = value;
  }

   set email(String value) {
    if (!value.contains('@')) {
      throw Exception("Email must contain '@' symbol.");
    }
    this._email = value;
  }

  set gpa(double value) {
    if (value < 0.0 || value > 10.0) {
      throw Exception("GPA must be between 0.0 and 10.0.");
    }
    this._gpa = value;
  }

  //override nhap thong tin
  @override
  void inputInfo() {
    super.inputInfo(); // Call Person's inputInfo()

    print("Enter Student ID (8 characters): ");
    this.studentId = stdin.readLineSync() ?? "";

    print("Enter Student Email (must contain '@'): ");
    this.email = stdin.readLineSync() ?? "";

    print("Enter Student GPA (0.0 - 10.0): ");
    String? gpaStr = stdin.readLineSync();
    if (gpaStr != null) {
      this.gpa = double.parse(gpaStr);
    }
  }

  // override xuat ra thong tin
  @override
  void showInfo() {
    super.showInfo(); // Goi thong tin lop Person showInfo()

    print("Student ID: $studentId");
    print("Email: $email");
    print("GPA: $gpa");
    print("Has Scholarship: ${hasScholarship() ? 'Yes' : 'No'}");
    print("--------------");
  }

  // Neu diem trung binh tren 8
  bool hasScholarship() {
    return this.gpa >= 8.0;
  }
}
