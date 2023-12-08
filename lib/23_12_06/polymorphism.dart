abstract interface class X {
  void a();
}

abstract class Y implements X {
  void b();
}

class A extends Y {
  String name= 'dd';
  @override
  void a() {
    print('Aa');
  }

  @override
  void b() {
    print('Ab');
  }

  void c() {
    print('Ac');
  }
}

class B extends Y {
  @override
  void a() {
    print('Ba');
  }

  @override
  void b() {
    print('Bb');
  }

  void c() {
    print('Bc');
  }
}

void main() {
  X obj = A();
  obj.a();

  Y y1 = A();
  Y y2 = B();

  y1.a();
  y2.a();

  print(obj);
  Y aa = A();
  Y bb = B();

  List<Y> aabbList = [];
  aabbList.add(aa);
  aabbList.add(bb);
  aabbList.forEach((element) {
    element.b();
  });
  print(aabbList[0]);
}