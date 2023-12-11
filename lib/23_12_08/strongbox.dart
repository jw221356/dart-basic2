// 다음 조건을 만족하는 금고인 StrongBox 클래스를 정의하시오.
// 금고 클래스에 담는 인스턴스의 타입은 미정
// 금고에는 1개의 인스턴스를 담을 수 있음
// put() 메서드로 인스턴스를 저장하고 get() 메서드로 인스턴스를 얻을 있음
// get() 으로 얻을 때는 별도의 타입 캐스팅을 사용하지 않아도 됨

//연습문제 1에서 작성한 StrongBox 클래스에 열쇠의 종류를 나타내는 열거형 KeyType을 정의하고,
//다음 내용을 반영하여 StrongBox 클래스를 수정하시오.
enum KeyType{
  padlock,
  button,
  dial,
  finger,
}

class StrongBox<E>{
  KeyType _keyType;
  E? _item;
  int _count = 0;

  StrongBox(this._keyType);

  void put(E item) => _item = item;

  E? get() {
    _count++;
    switch (_keyType){
      case KeyType.padlock:
        if(_count > 1024){
          return _item;
        }
      break;
      case KeyType.button:
        if(_count > 10000){
          return _item;
        }
      break;
      case KeyType.dial:
        if(_count > 30000){
          return _item;
        }
      break;
      case KeyType.finger:
        if(_count > 1000000){
          return _item;
        }
      break;
    }
    return null;
  }
}
void main() {
  final items = <int>[];

  final box = StrongBox<String>(KeyType.padlock);
  box.put('임금님 귀는 당나귀 귀 !!!');

  for (int i = 0; i < 1025; i++){
    print('${box.get()}');
  }
}





