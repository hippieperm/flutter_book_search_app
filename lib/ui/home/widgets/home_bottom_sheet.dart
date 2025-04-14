// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_book_search_app/data/model/book.dart';

import '../../detail/detail_page.dart';

class HomeBottomSheet extends StatelessWidget {
  Book book;

  HomeBottomSheet({
    super.key,
    required this.book,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      padding: const EdgeInsets.only(
        top: 20,
        right: 20,
        left: 20,
        bottom: 50,
      ),
      child: Row(
        children: [
          Image.network(
            book.image,
            fit: BoxFit.cover,
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  book.title,
                  maxLines: 2,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Text(
                  book.author,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                Text(
                  book.description,
                  maxLines: 2,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const DetailPage();
                        },
                      ),
                    );
                  },
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    color: Colors.transparent,
                    alignment: Alignment.center,
                    child: const Text(
                      '자세히 보기',
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
