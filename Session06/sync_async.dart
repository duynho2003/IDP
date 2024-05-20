void main() {
  //Sync
  print("Action 1");
  print("Action 2");
  print("Action 3");

  //Async with future
  print("Action 5");
  Future.delayed(Duration(seconds: 3), () => {print("Value from future after 3 seconds")
  });
  print("Action 6");
  print("Action 7");
}