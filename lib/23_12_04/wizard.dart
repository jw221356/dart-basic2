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
        _wand = wand{
        _validName(name);
        _validHp(hp);
        _validMp(mp);
  }

  String get name => _name;

  set name(String name) {
    _validName(name);
    _name = name;
  }

  int get hp => _hp;

  set hp(int hp) {
    _validHp(hp);
    _hp = hp;
  }

  int get mp => _mp;

  set mp(int mp) {
    _validMp(mp);
    _mp = mp;
  }

  Wand get wand => _wand;

  set wand(Wand wand) {
    _wand = wand;
  }

  void _validName(String name) {
    if (name.length < 3) {
      throw Exception('마법사 이름은 3글자 이상이여야 한다.');
    }
  }

  void _validHp(int hp) {
    if (hp < 0) {
      _hp = 0;
    }
  }

  void _validMp(int mp) {
    if (mp < 0) {
      throw Exception('마법사의 MP는 0 이상이어야 한다.');
    }
  }
}