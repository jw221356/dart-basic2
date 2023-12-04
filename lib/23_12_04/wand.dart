import 'wizard.dart';

class Wand {
  String _name; //이름
  double _power; //마력

  Wand({
    required name,
    required power,
  })  : _name = name,
        _power = power;

  set name(String name){
    if (_name.length < 3) {
      throw Exception('지팡이 이름은 3글자 이상이어야 한다.');
    }
    if (_power < 0.5 || _power > 100.0) {
      throw Exception('지팡이 마력은 0.5 이상 100.0 이하여야 한다.');
    }
  }
}