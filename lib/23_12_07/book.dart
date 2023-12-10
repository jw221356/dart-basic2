
import 'package:intl/intl.dart';

class Book {
  String title;
  DateTime publishDate = DateTime.now();
  String comment;

  Book({
    required this.title,
    required this.publishDate,
    required this.comment,
  });

  @override
  bool operator ==(Object other) =>
    identical(this, other) ||
      other is Book &&
        runtimeType == other.runtimeType &&
        title == other.title &&
        DateFormat('yyyy-MM-dd').format(publishDate) ==
          DateFormat('yyyy-MM-dd').format(other.publishDate);

  @override
  int get hashCode => title.hashCode ^ DateFormat('yyyy-MM-dd').format(publishDate).hashCode;

  @override
  int compareTo(Book other) {
    String currentFormat = DateFormat('yyyy-MM-dd').format(publishDate);
    String otherFormat = DateFormat('yyyy-MM-dd').format(other.publishDate);
    return currentFormat.compareTo(otherFormat);
  }

  // deep copy 를 지원한다
  Book copyWith({
    String? title,
    DateTime? publishDate,
    String? comment,
  }) {
    return Book(
      title: title ?? this.title,
      publishDate: publishDate ?? this.publishDate,
      comment: comment ?? this.comment,
    );
  }

  @override
  String toString() {
    return 'Book{title: $title, publishDate: $publishDate, comment: $comment}';
  }
}


void main() {
  final DateTime now = DateTime.now();
  final DateTime oneDayAfter = now.add(Duration(days: 1));
  final DateTime twoDayAfter = now.add(Duration(days: 2));

  print(now.hashCode);
  print(twoDayAfter.hashCode);
  print(oneDayAfter.hashCode);

  print(now.toString());
  print(twoDayAfter.toString());
  print(oneDayAfter.toString());

  final Book book1 = Book(
    title: 'title1',
    publishDate: now,
    comment: 'comment1',
  );
  final Book book2 = Book(
    title: 'title1',
    publishDate: now,
    comment: 'comment1-1',
  );
  final Book book3 = Book(
    title: 'title2',
    publishDate: twoDayAfter,
    comment: 'comment2',
  );
  final Book book4 = Book(
    title: 'title3',
    publishDate: oneDayAfter,
    comment: 'comment3',
  );

  List<Book> bookList = [book1, book2, book3, book4];
  Set<Book> bookSet = {book1, book2};
  Map<String, Book> bookMap = {
    "book1": book1,
    "book2": book2,
  };
  print(book1 == book2);
  print('${bookList[0] == bookList[1]}');

  print('${bookSet.length}');
  print(bookSet);

  print('${bookMap['book1'] == bookMap['book2']}');

  bookList.sort((a, b) => a.publishDate.millisecondsSinceEpoch
      .compareTo(b.publishDate.millisecondsSinceEpoch));

  bookList.forEach((element) {
    print(element.title);
  });

  final Book originBook =
  Book(title: "origin", publishDate: now, comment: "origin book comment");
  final Book copyBook = originBook.copyWith();
  print('origin: $originBook');
  print('copy: $copyBook');
}