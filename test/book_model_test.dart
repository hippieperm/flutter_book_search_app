import 'dart:convert';

import 'package:flutter_book_search_app/data/model/book.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('book model test', () {
    String dummyData = '''
 {
      "title": "Harry",
      "link": "https://search.shopping.naver.com/book/catalog/32548845485",
      "image": "https://shopping-phinf.pstatic.net/main_3254884/32548845485.20220523181533.jpg",
      "author": "",
      "discount": "41680",
      "publisher": "Authorhouse UK",
      "pubdate": "20181108",
      "isbn": "9781546292456",
      "description": "Set in the 1980s, Harry is a young girl who, overnight, turned from a chrysalis into a butterfly. Harry finds love and fame whilst on a family holiday in Spain."
    }
''';
    Map<String,dynamic> map = jsonDecode(dummyData);
    Book.fromJson(map);

    expect(actual, matcher)
  });
}
