// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_book_search_app/data/model/book.dart';
import 'package:flutter_book_search_app/data/repository/book_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeState {
  List<Book> books;
  HomeState(this.books);
}

class HomeViewModel extends Notifier<HomeState> {
  @override
  HomeState build() {
    return HomeState([]);
  }

  Future<void> searchBooks(String query) async {
    final bookRepository = BookRepository();
    final books = await bookRepository.searchBooks(query);

    state = HomeState(books);
  }
}

final homeProvider = NotifierProvider<HomeViewModel, HomeState>(() {
  return HomeViewModel();
});
