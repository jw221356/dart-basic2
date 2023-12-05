import 'dart:math';
void main() {
  Cleric cleric = Cleric(name:'priest');
  cleric.selfAid();

  cleric.pray(3);

  final cleric1 = Cleric(name:'아서스', hp:40, mp:5);
  final cleric2 = Cleric(name:'아서스', hp:35);
  final cleric3 = Cleric(name:'아서스');
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




  void selfAid() {
    if (mp >= 5) {
      mp -= 5;
      hp = maxhp;
    }
  }

  int pray(int sec) {

   final int beforemp = mp;
   final int recoverymp = Random().nextInt(3);

    mp += (sec + recoverymp);
    if (mp > maxmp) {
      mp = maxmp;
    }
    print('$recoverymp 회복함');
    return beforemp - mp;
  }
}
