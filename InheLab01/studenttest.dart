import 'dart:io';

import 'student.dart';

void main() {
  List<Student> students = [];

  while (true) {
    print("Welcome");
    print(("1. Nhập vào n sinh viên"));
    print(("2. Hiển thị thông tin tất cả các sinh viên ra màn hình"));
    print(
        ("3. Hiển thị sinh viên có điểm trung bình cao nhất và sinh viên có điểm trung bình thấp nhất"));
    print(("4. Tìm kiếm sinh viên theo mã sinh viên."));
    print(("5. Hiển thị tất cả các sinh viên được học bổng"));
    print(("6. Sắp xếp danh sách sinh viên theo thứ tự điểm cao xuống thấp"));
    print(("7. Exit"));

    var strChoice = stdin.readLineSync() ?? "0";
    int choice = int.parse(strChoice);

    if (choice == 7) {
      break;
    }
    switch (choice) {
      case 1:
        // Nhập vào n sinh viên
        print("Enter length of student would you like: ");
        int numStudents = int.parse(stdin.readLineSync() ?? "0");

        for (int i = 0; i < numStudents; i++) {
          Student student = Student();
          student.inputInfo();
          students.add(student);
        }
        break;
      case 2:
        if (students.isEmpty) {
          print("List of students is empty!");
        } else {
          for (Student student in students) {
            student.showInfo();
          }
        }
        break;
      case 3:
      
      case 4:

      case 5:
      // Hiển thị tất cả các sinh viên được học bổng
        if (students.isEmpty) {
          print("Danh sách sinh viên trống!");
        } else {
          List<Student> scholarshipStudents = students.where((student) => student.hasScholarship()).toList();

          if (scholarshipStudents.isEmpty) {
            print("Không có sinh viên nào được học bổng!");
          } else {
            print("Danh sách sinh viên được học bổng:");
            for (Student student in scholarshipStudents) {
              student.showInfo();
            }
          }
        }
        break;
      case 6:
        break;
      case 7:
        print("Exit");
        break;
      default:
        print("Invalid choice");
    }
  }
}
