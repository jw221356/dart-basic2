

import '../../interface/medic_curable.dart';
import 'interface/protoss_unit.dart';

class Zealot extends ProtossUnit implements MedicCurable {
  @override
  double hp;

  Zealot({required super.shield, required this.hp});
}