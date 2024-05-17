import 'dart:io';
import 'dart:math';

class Employee {
  late String _id;
  late String _name;
  late String _address;

  // String get id {
  //   print("get id");
  //   return _id;
  // }

  String get id => this._id;
  String get name => this._name;
  String get address => this._address;

  //--setter--//
  set id(String value) {
    if (value == "") {
      print("value must not empty");
      throw Exception("id value empty");
    }
    this._id = value;
  }

  set name(String value) => this._name = value;
  set address(String value) => this._address = value;

  Employee() {}

  Employee.withAll(String id, String name, String address) {
    this._id = id;
    this._name = name;
    this._address = address;
  }

  Employee.autoId(String name, String address) {
    this._id = Random().nextInt(100000).toString();
    this._name = name;
    this._address = address;
  }

  void inputInfo() {
    String id = "";
    do {
      print("Employee ID: ");
      id = stdin.readLineSync() ?? "";
      if (id != "") this.id = id;
    } while (id == "");

    print("Enter employee name: ");
    this.name = stdin.readLineSync() ?? "";

    print("Enter employee address: ");
    this.address = stdin.readLineSync() ?? "";
  }

  void printInfo() {
    print("----Employee Info----");
    print("Id: $id");
    print("Name: $name");
    print("Address: $address");
    print("---------------");
  }
}
