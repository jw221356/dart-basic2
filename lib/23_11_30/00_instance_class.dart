import '../23_12_01/game/hero.dart';

void main() {
  final hero = Hero(name: '슈퍼맨', hp: 10);

  final Car car = Car();

  Door door = Door();


  // 기본 자료형
  // int, double, bool, String

  // 새로운 타입 만들래 => 클래스 작성
}

class Car {
  // 멤버변수, field, 전역변수, 프로퍼티
  List<Door> doors = [];
  List<Wheel> wheels = [];
  String color = 'red';
  String number = '18어3300';
  double speed = 0.0;

  bool isStarting = false;

  void start() {
    isStarting = true;
  }

  void drive() {
    if (isStarting) {
      // 가!!
    }
  }
}

class Wheel {}

class Door {}

// f(x) = 2 * x
int x = 10;
int y = plusTwo(x);

//block body, expression body 전환 가능
int plusTwo(int x) {
  return 2 + x;
}
