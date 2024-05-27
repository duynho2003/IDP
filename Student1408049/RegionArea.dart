import 'dart:io';
import 'Circle.dart';
import 'Rectangle.dart';
import 'Shape.dart';

// ReigonArea ke thua iterable shape
class RegionArea extends Iterable<Shape> {

  //mang List dung de luu du lieu hien thi ra danh sach
  List<Shape> shapes = [];

  // phuong thuc tao ban kinh bang cach tinh pi * ban kinh * ban kinh
  void addCircle() {
    try {
      print("Enter radius of circle:");
      double radius = double.parse(stdin.readLineSync()!);
      shapes.add(Circle(radius));
    } catch (e) {
      print("Invalid input! Please enter again.");
    }
  }

  // phuong thuc tao hinh chu nhat bang cach tinh chieu dai * chieu rong
  void addRectangle() {
    try {
      print("Enter width of rectangle:");
      double width = double.parse(stdin.readLineSync()!);
      print("Enter height of rectangle:");
      double length = double.parse(stdin.readLineSync()!);
      shapes.add(Rectangle(width, length));
    } catch (e) {
      print("Invalid input! Please enter again.");
    }
  }

  // Trien khai iterator (interface: giao dien) de lay tat ca cac doi tuong trong danh sach chung
  @override
  Iterator<Shape> get iterator => shapes.iterator;
}
