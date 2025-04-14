// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

import 'package:flutter_book_search_app/data/model/book.dart';

class DetailPage extends StatelessWidget {
  Book book;

  DetailPage({
    super.key,
    required this.book,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(book.title),
      ),
      body: InAppWebView(
        initialUrlRequest: URLRequest(
          url: WebUri(book.link),
        ),
        initialSettings: InAppWebViewSettings(
          userAgent:
              'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.3',
          javaScriptEnabled: true,
        ),
      ),
    );
  }
}
