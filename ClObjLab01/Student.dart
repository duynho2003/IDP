import 'dart:io';

class Student {
  String studentid = "";
  String name = "";
  DateTime dob = DateTime.now();
  int subject1 = 0;
  int subject2 = 0;
  int subject3 = 0;

  //constructor co tham so
  Student.full(String id, String name, DateTime dob, int subject1, int subject2,
      int subject3);

  //constructor ko tham so
  Student();

  //getter va setters
  get getStudentid => this.studentid;

  set setStudentid(String studentid) => this.studentid = studentid;

  get getName => this.name;

  set setName(name) => this.name = name;

  get getDob => this.dob;

  set setDob(dob) => this.dob = dob;

  get getSubject1 => this.subject1;

  set setSubject1(subject1) => this.subject1 = subject1;

  get getSubject2 => this.subject2;

  set setSubject2(subject2) => this.subject2 = subject2;

  get getSubject3 => this.subject3;

  set setSubject3(subject3) => this.subject3 = subject3;

  //nhap thong tin
  void inputInfo() {
    print("Enter student ID:");
    studentid = stdin.readLineSync() ?? '';
    print("Enter name student:");
    name = stdin.readLineSync() ?? '';
    print("Enter your birthday (yyyy-MM-dd):");
    dob = DateTime.parse(stdin.readLineSync() ?? '');
    print("Enter subject 1:");
    subject1 = int.parse(stdin.readLineSync() ?? '');
    print("Enter subject 2:");
    subject2 = int.parse(stdin.readLineSync() ?? '');
    print("Enter subject 3:");
    subject3 = int.parse(stdin.readLineSync() ?? '');
  }

  //xuat ra thong tin
  void displayInfo() {
    print("Student ID: $studentid");
    print("Name: $name");
    print("Date of birth: ${dob.toIso8601String()}");
    print("Subject 1: $subject1");
    print("Subject 2: $subject2");
    print("Subject 3: $subject3");
  }
}
