
import 'interface/army_unionable.dart';
import 'protoss/protoss_unit/zealot.dart';
import 'terran/bionic/marine.dart';
import 'terran/bionic/medic.dart';
import 'terran/mechanic/scv.dart';
import 'terran/mechanic/tank.dart';

void main(List<String> args) {
  var medic = Medic(hp: 50);
  var marine = Marine(hp: 10);
  var zealot = Zealot(shield: 10, hp: 30);
  List<ArmyUnionable> army = [];
  var tank = Tank(hp: 150);
  var scv = SCV(hp: 50);

  print(zealot.hp);
  medic.heal(zealot);
  print(zealot.hp);

  print(marine.hp);
  medic.heal(marine);
  print(marine.hp);

  army.add(medic);
  army.add(marine);
  army.add(zealot);
  army.add(tank);
  army.add(scv);

  print(army);
}
