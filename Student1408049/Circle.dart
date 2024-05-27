import 'dart:math';
import 'Shape.dart';

// hinh tron thua ke Shape
class Circle extends Shape {
  double radius;

  // constructor co tham so
  Circle(this.radius);

  // tra ve ket qua bang cong thuc tinh dien tich ban kinh
  @override
  double area() {
    return pi * radius * radius;
  }
}
