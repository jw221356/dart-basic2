
import 'sword.dart';

class Hero {
  String name;
  int hp;
  Sword? sword;

  Hero({
    required this.name,
    required this.hp,
    this.sword,
  });

  void attack() {}

  void run() {}
}