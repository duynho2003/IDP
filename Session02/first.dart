void main() {
  int age = 34;
  double price = 450.6;
  String productName = "Asus";
  dynamic property = "Color-Red";
  bool printProperties = true;
  var lenght = [20, 15, 22];

  print(property); 
  print(productName); 
  property = lenght[0];
  productName = lenght[1].toString();
  print(property);
  print(productName);

  lenght.add(30);
  lenght.add(34);

  print(lenght);

  //final fixedLength = List.filled(3, 0);
  final fixedLength = List.filled(3, 0, growable: true);
  print(fixedLength);
  fixedLength.add(3);
  print(fixedLength);
  fixedLength[0] = 2;
  fixedLength.addAll([2, 8, 10]);
  print(fixedLength);

  //final vs const
  // const rowsPerPage; -> Loi
  const rowsPerPage = 15;
  final numOfFeeds;

  //fetcj apis = numOfFeeds = 20;
  numOfFeeds = 20;

  // rowsPerPage = 20;
  // numOfFeeds = 30;

  print(numOfFeeds);
  print(rowsPerPage);
}