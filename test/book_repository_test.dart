import 'package:flutter_book_search_app/data/model/book.dart';
import 'package:flutter_book_search_app/data/repository/book_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Book', () async {
    BookRepository bookRepository = BookRepository();
    final book = await bookRepository.searchBooks('harry');
    expect(book.isEmpty, false);
    for (var element in book) {
      print(element.toJson());
    }
  });
}
