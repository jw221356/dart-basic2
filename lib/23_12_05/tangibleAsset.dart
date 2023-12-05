/*
유형자산 (TangibleAsset) 은, 자산 (Asset) 의 일종이며, 형태가 있는 것 (Thing) 의 일종이기도 하다.
이 정의에 맞도록 TangibleAsset 의 소스 코드를 수정하시오.
이 때, TangibleAsset 에 필드나 메소드의 추가가 필요하다면, 적당히 추가하시오.
 */

import 'asset.dart';
import 'thing.dart';

abstract class TangibleAsset extends Asset implements Thing {
  int price;
  String color;
  double _weight;

  TangibleAsset({
    required super.name,
    required this.price,
    required this.color,
    weight
  }) : _weight = weight;

  @override
  set weight(double weight) {
    _weight = weight;
  }

  @override
  double get weight => _weight;
}