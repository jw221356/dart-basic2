
void main() {
  Cleric cleric = Cleric();
  cleric.selfAid();
}

class Cleric {
  String name = 'priest';
  int hp = 50;
  final int maxhp = 50;
  int mp = 10;
  final int maxmp = 10;

  void selfAid() {
    if (mp > 5 ){
      mp -=5;
      hp = maxhp;
    }
  }

}