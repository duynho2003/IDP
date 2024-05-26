import 'dart:io';

class Candidate {
  String id = "";
  String name = "";
  String dob = "";
  double math = 0.0;
  double literature = 0.0;
  double english = 0.0;

  //constructor ko tham so
  Candidate();

  //constructor co tham so
  Candidate.full(String id, String name, String dob, int math, int literature, int english);

  //tong diem
  double totalScore() {
    return math + literature + english;
  }

  //getters and setters
  get getId => this.id;

  set setId(String id) => this.id = id;

  get getName => this.name;

  set setName(name) => this.name = name;

  get getDob => this.dob;

  set setDob(dob) => this.dob = dob;

  get getMath => this.math;

  set setMath(math) => this.math = math;

  get getLiterature => this.literature;

  set setLiterature(literature) => this.literature = literature;

  get getEnglish => this.english;

  set setEnglish(english) => this.english = english;

  //nhap thong tin
  void inputInfo() {
    print("Enter student ID:");
    id = stdin.readLineSync() ?? '';
    print("Enter name student:");
    name = stdin.readLineSync() ?? '';
    print("Enter dob student:");
    dob = stdin.readLineSync() ?? '';

    do {
      print('Enter Math (0 - 10):');
      math = double.parse(stdin.readLineSync() ?? '');
    } while (math < 0.0 || math > 10);

    do {
      print('Enter Literature (0 - 10):');
      literature = double.parse(stdin.readLineSync() ?? '');
    } while (literature < 0.0 || literature > 10);

    do {
      print('Enter English (0 - 10):');
      english = double.parse(stdin.readLineSync() ?? '');
    } while (english < 0.0 || english > 10);
  }

  //hien thong tin
  void displayInfo() {
    print("Student ID: $id");
    print("Name: $name");
    print("Date of birth: $dob");
    print("Math: $math");
    print("Literature: $literature");
    print("English: $english");
  }
}
