import 'dart:convert';

import 'package:flutter_book_search_app/data/model/book.dart';
import 'package:http/http.dart';

class BookRepository {
  Future<List<Book>> searchBooks(String query) async {
    final client = Client();
    final response = await client.get(
        Uri.parse('https://openapi.naver.com/v1/search/book.json?query=$query'),
        headers: {
          'X-Naver-Client-Id': 'ffaahhmjjWUf13LIQiGo',
          'X-Naver-Client-Secret': 'LPwo0ZpKlG',
        });
    if (response.statusCode == 200) {
      Map<String, dynamic> map = jsonDecode(response.body);
      final items = List.from(map['items']);
      final iterable = items.map((e) {
        return Book.fromJson(e);
      });

      return iterable.toList();
    }
    return [];
  }
}
