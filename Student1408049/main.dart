import 'dart:io';
import 'RegionArea.dart';

void main() {
  var region = RegionArea();

  while (true) {
    print("\nMenu:");
    print("1. Add new Circle");
    print("2. Add new Rectangle");
    print("3. Show");
    print("4. Exit");
    print("Enter your choice:");

    var choice = int.parse(stdin.readLineSync() ?? '0');
    switch (choice) {
      case 1:
        // tao hinh ban kinh
        region.addCircle();
        break;
      case 2:
        // tao hinh chu nhat
        region.addRectangle();
        break;
      case 3:
        // hien thi ket qua dien tich
        print("Showing areas:");
        for (var shape in region.shapes) {
          print("Area: ${shape.area()}");
        }
        break;
      case 4:
        exit(0);
      default:
        print("Invalid choice! Please try again.");
    }
  }
}
