import 'wizard.dart';

class Wand {
  String _name; //이름
  double _power; //마력

  Wand({
    required name,
    required power,
  })  : _name = name,
        _power = power{
        _validName(_name);
        _validPower(_power);
  }

  String get name => _name;

  set name(String name) {
    _validName(name);
    _name = name;
  }

  double get power => _power;

  set power(double power) {
    _validPower(power);
    _power = power;
  }
  void _validName(String name) {
    if (name.length < 3) {
      throw Exception('지팡이 이름은 3글자 이상이여야 한다.');
    }
  }

  void _validPower(double power) {
    if (power < 0.5) {
      throw Exception('지팡이 마력은 0.5 이상이어야 한다.');
    }
    if (power > 100.0) {
      throw Exception('지팡이 마력은 100 이하여야 한다.');
    }
  }
}