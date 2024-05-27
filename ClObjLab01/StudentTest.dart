import 'dart:io';
import 'student.dart';

void main() {
  List<Student> students = [];
  while (true) {
    print('Menu:');
    print('1. Nhập vào n sinh viên');
    print('2. Hiển thị thông tin tất cả các sinh viên');
    print('3. Hiển thị sinh viên có điểm trung bình cao nhất và sinh viên có điểm trung bình thấp nhất');
    print('4. Thoát');
    print('Chọn một tùy chọn:');
    
    int choice = int.parse(stdin.readLineSync() ?? '0');

    switch (choice) {
      case 1:
        print('Nhập số lượng sinh viên:');
        int n = int.parse(stdin.readLineSync() ?? '0');
        for (int i = 0; i < n; i++) {
          Student student = Student();
          student.inputInfo();
          students.add(student);
        }
        break;
      case 2:
        for (var student in students) {
          student.displayInfo();
        }
        break;
      case 3:
        break;
      case 4:
        return;
      default:
        print('Tùy chọn không hợp lệ. Vui lòng chọn lại.');
    }
  }
}
