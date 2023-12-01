import 'dart:math';

void main() {
  Cleric cleric = Cleric();
  cleric.selfAid();

  int sec = 4;
  int realRecoverymp = cleric.pray(sec);
  print('$realRecoverymp 회복함');
}

class Cleric {
  final int maxmp = 10;
  final int maxhp = 50;
  String name = 'priest';
  int hp = 50;
  int mp = 10;

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
