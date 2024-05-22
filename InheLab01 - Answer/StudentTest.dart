import 'dart:io';
import 'student.dart';

void main() {
  List<Student> students = [];
  while (true) {
    print('Menu:');
    print('1. Nhập vào n sinh viên');
    print('2. Hiển thị thông tin tất cả các sinh viên');
    print('3. Hiển thị sinh viên có điểm trung bình cao nhất và sinh viên có điểm trung bình thấp nhất');
    print('4. Tìm kiếm sinh viên theo mã sinh viên');
    print('5. Hiển thị tất cả các sinh viên được học bổng');
    print('6. Sắp xếp danh sách sinh viên theo thứ tự điểm cao xuống thấp');
    print('7. Thoát');
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
          student.showInfo();
        }
        break;
      case 3:
        if (students.isNotEmpty) {
          students.sort((a, b) => a.gpa.compareTo(b.gpa));
          print('Sinh viên có điểm trung bình thấp nhất:');
          students.first.showInfo();
          print('Sinh viên có điểm trung bình cao nhất:');
          students.last.showInfo();
        }
        break;
      case 4:
        print('Nhập mã sinh viên để tìm kiếm:');
        String id = stdin.readLineSync() ?? '';
        var foundStudents = students.where((s) => s.studentId == id);
        if (foundStudents.isNotEmpty) {
          for (var student in foundStudents) {
            student.showInfo();
          }
        } else {
          print('Không tìm thấy sinh viên với mã $id');
        }
        break;
      case 5:
        for (var student in students) {
          if (student.isScholarshipEligible()) {
            student.showInfo();
          }
        }
        break;
      case 6:
        students.sort((a, b) => b.gpa.compareTo(a.gpa));
        print('Danh sách sinh viên sau khi sắp xếp:');
        for (var student in students) {
          student.showInfo();
        }
        break;
      case 7:
        return;
      default:
        print('Tùy chọn không hợp lệ. Vui lòng chọn lại.');
    }
  }
}
