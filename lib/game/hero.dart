import 'dart:math';

import 'dancer.dart';
import 'goblin.dart';
import 'monster.dart';
import 'slime.dart';

import 'sword.dart';

class Hero implements Speakable {
  // 공통의 돈
  static int money = 100;

  static void moneyRandom() {
    Hero.money = Random().nextInt(1000);
  }

  String name;
  int _hp;
  Sword? sword;

  Hero({
    required this.name,
    required int hp,
    this.sword,
  }) : _hp = hp {
    print('1. Hero 생성자');
  }

  // getter
  // 프로퍼티
  int get hp => _hp;

  set hp(int value) {
    if (value < 0) {
      throw Exception('hp는 0보다 작을 수 없다');
    }

    _hp = value;
  }

  // Java 스타일의 getter/ setter
  //
  // void setName(String name) {
  //   _name = name;
  // }
  //
  // String getName() {
  //   return _name;
  // }

  // 메서드 : 클래스내에서 클래스를 위한 동작을 하는 함수
  // 함수 : 클래스랑 상관 없이 독자적으로 실행되는 함수
  void attack(Monster monster) {
    monster.hp -= 10;
    print('10의 데미지!!!');
  }

  void run() {
    print('뛰었다');
  }

  @override
  void speak() {
    // TODO: implement speak
  }

  @override
  String toString() {
    return 'Hero{name: $name, _hp: $_hp, sword: $sword}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Hero && runtimeType == other.runtimeType && name == other.name;

  @override
  int get hashCode => name.hashCode;
}

void main() {
  print(Hero.money);

  final hero = Hero(name: '용사', hp: 100);

  // 둘 다 Monster
  Slime slime = Slime(100);
  Goblin goblin = Goblin();

  hero.attack(slime);
  hero.attack(goblin);

  hero.name = 'aa';
  print(hero.hp);
  hero.hp = 100;

  // final fireSword = Sword(name: 'bbb', damage: 10);
  //
  // final h1 = Hero();
  // Hero.money = 200;
  //
  // Hero(name: '배트맨');
  // Hero(hp: 200);
  // Hero(sword: fireSword);
  //
  // Hero(name: 'aaa', hp: 111);
  // Hero(hp: 111, sword: fireSword);
  //
  // final hero = Hero(name: 'aaa', hp: 10, sword: fireSword);
  //
  Hero.moneyRandom();
}