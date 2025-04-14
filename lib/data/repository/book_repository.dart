import 'package:http/http.dart';

class BookRepository {
  Future<void> searchBooks(String query) async {
    final client = Client();
    final response = await client.get(
      Uri.parse('https://openapi.naver.com/v1/search/book.json?query=$query'),
      headers: {
        'X-Naver-Client-Id': 'ffaahhmjjWUf13LIQiGo',
        'X-Naver-Client-Secret': 'LPwo0ZpKlG',
      },
    );
  }
}
