import 'dart:io';

class Person {
  late String _name;
  late String _gender;
  late String _dob;
  late String _address;

  String get name => this._name;
  String get gender => this._gender;
  String get dob => this._dob;
  String get address => this._address;

  set name(String value) => this._name = value;
  set gender(String value) => this._gender = value;
  set dob(String value) => this._dob = value;
  set address(String value) => this._address = value;

  Person() {}
  Person.withAll(String name, String gender, String dob, String address) {
    this._name = name;
    this._gender = gender;
    this._dob = dob;
    this._address = address;
  }

  //Nhap thong tin
  void inputInfo() {
    print("Enter Person name: ");
    this.name = stdin.readLineSync() ?? "";

    print("Enter Person gender: ");
    this.gender = stdin.readLineSync() ?? "";

    print("Enter Person dob: ");
    this.dob = stdin.readLineSync() ?? "";

    print("Enter Person address: ");
    this.address = stdin.readLineSync() ?? "";
  }

  void showInfo() {
    print("----Person Info----");
    print("Name: $name");
    print("Gender: $gender");
    print("Dob: $dob");
    print("Address: $address");
    print("--------------");
  }

  @override
  String toString() {
    return "name: $name - gender: $gender - dob: $dob - address: $address";
  }
}
