// 다음과 같은 프로그램을 작성, 실행 후 runtime error 를 발생하시오
void main() {
  final numString = '10.5';

  int num;

  try {
    num = int.parse(numString);

    print(num);
  } catch(e) {
    num = 0;
  }
}

void numString() {
  throw Exception('에러발생');
}