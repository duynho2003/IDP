import 'dart:io';

void branchIf() {
  print("Is it raining?");
  // String strIsRaining = stdin.readLineSync() ?? "no";
  String? strIsRaining = stdin.readLineSync();
  print("Is it snowing?");
  String? strIsSnowing = stdin.readLineSync();

  if (strIsRaining == "yes") {
    print("Stay at school! ${strIsRaining}");
  } else if (strIsSnowing == "yes") {
    print("never have in HCM ${strIsSnowing}");
  } else {
    print("Go home and do project");
  }
}

void branchSwitch() {
  var command = "OPEN";
  switch (command) {
    case "CLOSE":
      print("Store is closing");
    case "PENDING":
      print("Store is not open yet");
    case "DENIED":
      print("Store is denied you");
    case "OPEN":
      print("Welcome");
    default:
      print("Store isn't available!!");
  }
}

void branchSwitchLabel() {
  var command = "CLOSE";
  switch (command) {
    case "CLOSE":
    case "PENDING":
      print("Store is not open yet or closing");
    case "DENIED":
      print("Store is denied you");
      continue newLabel;
    case "OPEN":
      print("Welcome");
    newLabel:
    case "ADMIN":
      print("Email to sys admin");
    default:
      print("Store isn't available!!");
  }
}

//tube
void branchSwitchPair() {
  var pair = (4, 6);
  switch (pair) {
    case (int a, int b) when a > b:
      print("Pair $a > $b ");
      break;
    case (int a, int b) when a < b:
      print("Pair $a < $b ");
      break;
    default:
      print("Pair ${pair.$1} == ${pair.$2}");
  }
}

void main() {
  // branchIf();
  // branchSwitch();
  branchSwitchLabel();
  branchSwitchPair();
}
