
import 'package:test/test.dart';
import 'package:untitled/23_12_18/top_level.dart';

void main() {
 test('짝수 true 반환', (){
   expect(isEven(2), true);
 });
 test('홀수면 true 반환', (){
   expect(isEven(5), false);
 });
}