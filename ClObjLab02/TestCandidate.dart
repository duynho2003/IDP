import 'dart:io';

import 'Candidate.dart';

void main() {
  List<Candidate> candidates = [];
  while (true) {
    print('Menu:');
    print('1. Nhập vào n thí sinh');
    print('2. Hiển thị thí sinh có tổng điểm lớn hơn 15');
    print('3. Thoát');
    print('Chọn một tùy chọn:');

    int choice = int.parse(stdin.readLineSync() ?? '0');
    switch (choice) {
      case 1:
        print('Nhập số lượng sinh viên:');
        int n = int.parse(stdin.readLineSync() ?? '0');
        for (int i = 0; i < n; i++) {
          Candidate candidate = Candidate();
          candidate.inputInfo();
          candidates.add(candidate);
        }
        break;
      case 2:
        print("Thí sinh có tổng điểm lớn hơn 15:");
        for (var candidate in candidates) {
          if (candidate.totalScore() > 15) {
            candidate.displayInfo();
            print("Total score: ${candidate.totalScore()}\n");
          }
        }
        break;
      case 3:
        return;
      default:
        print('Tùy chọn không hợp lệ. Vui lòng chọn lại.');
    }
  }
}
