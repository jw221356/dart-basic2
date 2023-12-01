import 'dart:math';
void main() {
  Cleric cleric = Cleric(name:'priest');
  cleric.selfAid();

  int sec = 4;
  int realRecoverymp = cleric.pray(sec);
  print('$realRecoverymp 회복함');
}

class Cleric {
 static const int maxmp = 50;
 static const int maxhp = 10;
  String name;
  int hp;
  int mp;

 Cleric({
   required this.name,
   this.hp = maxhp,
   this.mp = maxmp,
 });

  final cleric1 = Cleric(name:'아서스', hp:40, mp:5);
  final cleric2 = Cleric(name:'아서스', hp:35);
  final cleric3 = Cleric(name:'아서스');


  void selfAid() {
    if (mp >= 5) {
      mp -= 5;
      hp = maxhp;
    }
  }

  int pray(int sec) {
    Random random = Random();

    final int beforemp = mp;

    final int recoverymp = sec + Random().nextInt(3);

    final int realRecoverymp = mp - beforemp;
    mp += recoverymp;

    if (mp > maxmp) {
      mp = maxmp;
    }

    return beforemp - mp;
  }
}
