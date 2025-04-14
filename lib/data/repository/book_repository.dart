import 'package:http/http.dart';

class BookRepository {
  void searchBooks(String query) {
    final client = Client();
    client
        .get(Uri.parse('https://openapi.naver.com/v1/search/book.json?query=$query'));
  }
}
