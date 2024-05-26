import 'dart:io';

import 'Dog.dart';
import 'Tiger.dart';
import 'Zoo.dart';

void main() {
  Zoo zoo = Zoo();

  while (true) {
    print('Welcome to Zoo');
    print('1. Add a new animal');
    print('2. Show all animals');
    print('3. Search animals by name');
    print('4. Exit');
    print('Chọn một tùy chọn:');

    int choice = int.parse(stdin.readLineSync() ?? '0');

    switch (choice) {
      case 1:
        print("Which animals would you like to add?");
        print("T: Tiger / D: Dog / C: Cat / done: Done");
        String animalType = stdin.readLineSync() ?? "NA";
        if (animalType == "T") {
          print("Enter name of tiger: ");
          String ten = stdin.readLineSync()!;
          print("Enter age of tiger: ");
          int tuoi = int.parse(stdin.readLineSync()!);
          print("Enter description of tiger: ");
          String mota = stdin.readLineSync()!;
          zoo.addTiger(Tiger(ten, tuoi, mota));
        } else if (animalType == "D") {
          print("Enter name of dog: ");
          String ten = stdin.readLineSync()!;
          print("Enter age of dog: ");
          int tuoi = int.parse(stdin.readLineSync()!);
          print("Enter description of dog: ");
          String mota = stdin.readLineSync()!;
          zoo.addDog(Dog(ten, tuoi, mota));
        } else if (animalType == "C") {
          print("Enter name of cat: ");
          String ten = stdin.readLineSync()!;
          print("Enter age of cat: ");
          int tuoi = int.parse(stdin.readLineSync()!);
          print("Enter description of cat: ");
          String mota = stdin.readLineSync()!;
          zoo.addDog(Dog(ten, tuoi, mota));
        } else if (animalType == "done") {
          break;
        } else {
          print("Incorrect choice");
        }
      case 2:
        zoo.showAll();
        break;
      case 3:
        print("Nhập tên con vật bạn muốn tìm: ");
        String name = stdin.readLineSync()!;
        zoo.searchAnimal(name);
        break;
      case 4:
        return;
      default:
        print('Tùy chọn không hợp lệ. Vui lòng chọn lại.');
    }
  }
}
