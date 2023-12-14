void main(){
  test(3);
  test(1);
  test(5);
  test(7);
}

Future<void> test(int num) async {
  Stopwatch stopwatch = Stopwatch()..start();
  await Future.delayed(Duration(seconds: num));
  print('요청한 $num 작업 완료! : ${stopwatch.elapsed}');
}