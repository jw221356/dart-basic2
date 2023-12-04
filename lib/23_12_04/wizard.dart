import 'wand.dart';

class Wizard {
  String _name;
  int _hp;
  int _mp;
  Wand _wand;

  Wizard({
    required name,
    required hp,
    required mp,
    required wand,
  })  : _name = name,
        _hp = hp,
        _mp = mp,
        _wand = wand;

  set name(String name){
    if (_name.length < 3) {
      throw Exception('마법사 이름은 3글자 이상이여야 한다.');
    }
    if (_hp < 0) {
      throw Exception('HP가 음수가 되는 상황에서는 대신 0을 설정 되도록 한다.');
    }
    if (_mp < 0) {
      throw Exception('마법사의 MP는 0 이상이어야 한다. ');
    }
  }
}