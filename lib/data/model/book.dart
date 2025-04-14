// ignore_for_file: public_member_api_docs, sort_constructors_first
//  {
//       "title": "Harry",
//       "link": "https://search.shopping.naver.com/book/catalog/32548845485",
//       "image": "https://shopping-phinf.pstatic.net/main_3254884/32548845485.20220523181533.jpg",
//       "author": "",
//       "discount": "41680",
//       "publisher": "Authorhouse UK",
//       "pubdate": "20181108",
//       "isbn": "9781546292456",
//       "description": "Set in the 1980s, Harry is a young girl who, overnight, turned from a chrysalis into a butterfly. Harry finds love and fame whilst on a family holiday in Spain."
//     }

class Book {
  String title;
  String link;
  String image;
  String author;
  String discount;
  String publisher;
  String pubdate;
  String isbn;
  String description;

  Book({
    required this.title,
    required this.link,
    required this.image,
    required this.author,
    required this.discount,
    required this.publisher,
    required this.pubdate,
    required this.isbn,
    required this.description,
  });

  // 1. fromJson 네임드 생성자 만들기
  Book.fromJson(Map<String, dynamic> map)
      : this(
          title: map['title'],
          link: map['link'],
          image: map['image'],
          author: map['author'],
          discount: map['discount'],
          publisher: map['publisher'],
          pubdate: map['pubdate'],
          isbn: map['isbn'],
          description: map['description'],
        );

  // 2. toJson 매서드 만들기s
  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'link': link,
      'image': image,
      'author': author,
      'discount': discount,
      'publisher': publisher,
      'pubdate': pubdate,
      'isbn': isbn,
      'description': description,
    };
  }
}
