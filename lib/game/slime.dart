import 'monster.dart';

class Slime extends Monster {
  int hp;
  final int level = 10;

  Slime(this.hp);

  void attack() {
    final person = _Person();
  }

  @override
  void run() {
    print('222222222222');
  }
}

class _Person {
}

void main() {
  Slime slime1 = Slime(100); // 1
  Monster slime2 = Slime(100); // 2

  slime1.run();
  slime2.run();

  // true: O, false: X
  print(slime1 == slime2);
}