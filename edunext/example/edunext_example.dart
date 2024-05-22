import 'package:edunext/edunext.dart';
import 'dart:convert' as convert;

import 'package:http/http.dart' as http;

Future<void> main() async {
  var awesome = Awesome();
  print('awesome: ${awesome.isAwesome}');
  var url =
      Uri.https('www.googleapis.com', '/books/v1/volumes', {'q': '{http}'});

  // Await the http get response, then decode the json-formatted response.
  var response = await http.get(url);
  if (response.statusCode == 200) {
    var jsonResponse =
        convert.jsonDecode(response.body) as Map<String, dynamic>;
    var itemCount = jsonResponse['totalItems'];
    print('Number of books about http: $itemCount.');
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }
}
