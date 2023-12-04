import 'person.dart';

void main() {
  Map<String, dynamic> persons = {
    '홍길동': 20,
    '한석봉': 25,
  };
  persons.entries.forEach((element) {
    print('${element.key}의 나이는${element.value} 살 ');
  });
}
