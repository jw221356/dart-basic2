
class Book {
  String title;
  DateTime publishDate = DateTime.now();
  String comment;

  Book({
    required this.title,
    required this.comment,
    required this.publishDate,
  });
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is title && runtimeType == other.runtimeType && publishDate == other.name;
  @override
  String toString(){
    return''
  }
}
/*더 열심히 공부를 하고나서 풀어 보도록하겠습니다....*/