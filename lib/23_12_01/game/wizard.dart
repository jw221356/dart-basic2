
import 'hero.dart';
import 'wand.dart';

class Wizard {
  String name;
  int hp;
  Wand? wand;

  Wizard({
    required this.name,
    required this.hp,
  });

  void heal(Hero hero) {
    hero.hp += 10;
  }
}