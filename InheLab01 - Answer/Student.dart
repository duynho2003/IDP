import 'dart:io';

import 'person.dart';

class Student extends Person {
  String studentId = '';
  double gpa = 0.0;
  String email = '';

  Student();

  Student.full(String name, String gender, DateTime birthDate, String address,
      this.studentId, this.gpa, this.email)
      : super.full(name, gender, birthDate, address);

  @override
  void inputInfo() {
    super.inputInfo();

    // print('Enter student ID (8 characters):');
    // studentId = stdin.readLineSync() ?? '';
    do {
      print('Enter student ID (8 characters):');
      studentId = stdin.readLineSync() ?? '';
    } while (studentId.length != 8);

    // print('Enter GPA (0.0 - 10.0):');
    // gpa = double.parse(stdin.readLineSync() ?? '');
    do {
      print('Enter GPA (0.0 - 10.0):');
      gpa = double.parse(stdin.readLineSync() ?? '');
    } while (gpa < 0.0 || gpa > 10.0);

    // print('Enter email (must contain @):');
    // email = stdin.readLineSync() ?? '';
    do {
      print('Enter email (must contain @):');
      email = stdin.readLineSync() ?? '';
    } while (!email.contains('@'));

    print("--------- Next Student ----------");
  }

  @override
  void showInfo() {
    super.showInfo();
    print('Student ID: $studentId');
    print('GPA: $gpa');
    print('Email: $email');
  }

  bool isScholarshipEligible() {
    return gpa >= 8.0;
  }
}
