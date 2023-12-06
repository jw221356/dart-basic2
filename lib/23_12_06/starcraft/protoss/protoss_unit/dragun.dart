
import '../../interface/scv_curable.dart';
import 'interface/protoss_unit.dart';

class Dragun extends ProtossUnit implements SCVCurable {
  @override
  double hp;

  Dragun({
    required this.hp,
    required super.shield,
  });
}