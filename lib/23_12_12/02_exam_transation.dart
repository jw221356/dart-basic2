import 'package:collection/collection.dart';

class Trader {
  String name;
  String city;

  Trader(this.name, this.city);
}

class Transaction {
  Trader trader;
  int year;
  int value;

  Transaction(this.trader, this.year, this.value);
}

var transactions = [
  Transaction(Trader("Brian", "Cambridge"), 2011, 300),
  Transaction(Trader("Raoul", "Cambridge"), 2012, 1000),
  Transaction(Trader("Raoul", "Cambridge"), 2011, 400),
  Transaction(Trader("Mario", "Milan"), 2012, 710),
  Transaction(Trader("Mario", "Milan"), 2012, 700),
  Transaction(Trader("Alan", "Cambridge"), 2012, 950),
];

void main() {
  // 1. 2011년에 일어난 모든 트랜잭션을 찾아 가격 기준 오름차순으로 정리하여 이름을 나열하시오
  print(transactions.where((e) => e.year == 2011)
      .sorted((a, b) => a.value.compareTo(b.value))
      .map((e) => e.trader.name)
      .toSet()
      .toList()
      .length);

  final result = transactions
      .where((e) => e.year == 2011)
      .toList();
  // print(transactions.where((e) => e.year == 2011).toList().length);

  // print(transactions.map((e) => e.trader.name).toSet().toList());

  // 2. map 거래자가 근무하는 모든 도시를 중복 없이 나열하시오
  print(transactions.map((e) => e.trader.city).toSet());

  // 3. where sort 케임브리지에서 근무하는 모든 거래자를 찾아서 이름순으로 정렬하여 나열하시오
  final a = transactions
      .where((e) => e.trader.city.contains("Cambridge"))
      .map((e) => e.trader.city)
      .toList();

  final b = transactions
      .where((e) => e.trader.city == "Cambridge") // where 조건 필터링 찾기
      .map((e) => e.trader.name) //map 추출
      .toList();
  a.sort((a, b) => a.compareTo(b));

  print(b);

  // 4. sort 모든 거래자의 이름을 알파벳순으로 정렬하여 나열하시오
  final v = transactions
      .map((e) => e.trader.name)
      .toList()
      .sort((a, b) => a.compareTo(b));

  print(transactions.map((e) => e.trader.name).toSet().toList()
    ..sort((a, b) => a.compareTo(b)));
  }


