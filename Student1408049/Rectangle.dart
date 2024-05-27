import 'Shape.dart';

// hinh chu nhat thua ke Shape
class Rectangle extends Shape {
  double width;
  double height;

  // constructor co tham so
  Rectangle(this.width, this.height);

  // tra ve ket qua bang cong thuc tinh dien tich hinh chu nhat
  @override
  double area() {
    return width * height;
  }
}
