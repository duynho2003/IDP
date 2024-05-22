import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class Item {
  late String _kind;
  late String _id;
  late String _etag;
  late String _publisher;

  // Constructor
  Item(this._id, this._kind, this._etag, this._publisher);

  // Getters
  String get kind => _kind;
  String get id => _id;
  String get etag => _etag;
  String get publisher => _publisher;

  // Define a static method to create Item from JSON
  static Item fromJson(Map<String, dynamic> json) {
    return Item(
      json['id'],
      json['kind'],
      json['etag'],
      json['volumeInfo']['publisher'] ?? 'Unknown',
    );
  }

  @override
  String toString() {
    return 'Item1{id: $_id, kind: $_kind, etag: $_etag, publisher: $_publisher}';
  }
}

Future<void> fetchBooks() async {
  // This example uses the Google Books API to search for books about http.
  // https://developers.google.com/books/docs/overview
  var url = Uri.https('www.googleapis.com', '/books/v1/volumes', {'q': '{http}'});

  // Await the http get response, then decode the json-formatted response.
  var response = await http.get(url);
  if (response.statusCode == 200) {
    var jsonResponse = convert.jsonDecode(response.body) as Map<String, dynamic>;
    // var itemCount = jsonResponse['totalItems'];
    List<Item> listItems = [];
    for (var item in jsonResponse['items']) {
      Item bookItem = Item.fromJson(item);
      listItems.add(bookItem);
    }

    for (var item in listItems) {
      print(item);
    }
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }
}

void main(List<String> arguments) async {
  await fetchBooks();
}