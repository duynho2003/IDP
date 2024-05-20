//Call Apis Get username from backend
Future<String> getUsername() {
  return Future.delayed(Duration(seconds: 3), () => "My name");
}

Future<void> main() async {
  print("before call apis");
  //Check name is valid to continue
  var name = await getUsername();
  if (name == "My name") {
    print("name is valid");
  } else {
    print("name is not valid");
  }
}
