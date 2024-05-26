import 'dart:io';

class Person {
  String name = '';
  String gender = '';
  DateTime birthDate = DateTime.now();
  String address = '';

  //constructor ko tham so
  Person();
  
  //constructor day du tham so
  Person.full(this.name, this.gender, this.birthDate, this.address);

  //getters va setters
  String getName() => name;
  void setName(String name) => this.name = name;

  String getGender() => gender;
  void setGender(String gender) => this.gender = gender;

  DateTime getBirthDate() => birthDate;
  void setBirthDate(DateTime birthDate) => this.birthDate = birthDate;

  String getAddress() => address;
  void setAddress(String address) => this.address = address;

  void inputInfo() {
    print('Enter name:');
    name = stdin.readLineSync() ?? '';

    print('Enter gender:');
    gender = stdin.readLineSync() ?? '';

    print('Enter birth date (yyyy-MM-dd):');
    birthDate = DateTime.parse(stdin.readLineSync() ?? '');

    print('Enter address:');
    address = stdin.readLineSync() ?? '';
  }

  void showInfo() {
    print('Name: $name');
    print('Gender: $gender');
    print('Birth Date: ${birthDate.toIso8601String()}');
    print('Address: $address');
  }
}
