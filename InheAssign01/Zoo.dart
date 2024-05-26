import 'Cat.dart';
import 'Dog.dart';
import 'Tiger.dart';

class Zoo {
  //khai bao 3 arrays by using List to save list
  List<Tiger> tigers = [];
  List<Dog> dogs = [];
  List<Cat> cats = [];

  void addTiger(Tiger t) {
    tigers.add(t);
  }

  void addDog(Dog d) {
    dogs.add(d);
  }

  void addCat(Cat c) {
    cats.add(c);
  }

  // in ra tat ca dong vat
  void showAll() {
    print("Tigers:");
    for (var tiger in tigers) {
      tiger.xemThongTin();
    }

    print("Dogs:");
    for (var dog in dogs) {
      dog.xemThongTin();
    }

    print("Cats:");
    for (var cat in cats) {
      cat.xemThongTin();
    }
  }

  void searchAnimal(String name) {
    bool found = false;

    // Tìm kiếm trong mảng Tiger
    for (var tiger in tigers) {
      if (tiger.ten == name) {
        tiger.xemThongTin();
        found = true;
        break;
      }
    }

    // Tìm kiếm trong mảng Dog nếu chưa tìm thấy
    if (!found) {
      for (var dog in dogs) {
        if (dog.ten == name) {
          dog.xemThongTin();
          found = true;
          break;
        }
      }
    }

    // Tìm kiếm trong mảng Cat nếu vẫn chưa tìm thấy
    if (!found) {
      for (var cat in cats) {
        if (cat.ten == name) {
          cat.xemThongTin();
          found = true;
          break;
        }
      }
    }

    // In thông báo nếu không tìm thấy
    if (!found) {
      print("Không tìm thấy con vật nào có tên $name.");
    }
  }
}