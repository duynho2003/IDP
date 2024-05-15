import 'dart:io';

void loop1() {
  var message = StringBuffer("Dart is fun and easy");
  var numbers = StringBuffer("");
  for (int index = 0; index < message.length; index++) {
    print("message $index : ${message.toString()[index]}");
    numbers.write(index);
  }
  print(numbers);
}

void while1() {
  int choice;

  do {
    // Display menu options
    print("Menu:");
    print("1. Option 1");
    print("2. Option 2");
    print("3. Exit");

    //Get input
    print("Enter your choice: ");
    choice = int.parse(stdin.readLineSync()!);

    //menu choice
    if (choice == 1) {
      loop1();
    } else if (choice == 2) {
      print("You selected Option 2");
    } else if (choice == 3) {
      print("Exiting...");
    } else {
      print("Invalid selection.");
    }
  } while (choice != 3); // Loop continues until user exits (selection 3)
}

void main() {
  while1();
}
