//Call Apis Get username from backend
Future<String> getUsername() {
  return Future.delayed(Duration(seconds: 3), () => "My name");
}

void main(){
  var name = getUsername();

  print("before call");
  name.then((value) => print("Name is: $value"));
  print("after call");
}