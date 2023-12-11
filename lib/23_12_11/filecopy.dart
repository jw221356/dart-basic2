import 'dart:io';

void copy(String source, String target) {
  final myFile = File(source);
  final myCopy = File(target);
  
  myCopy.writeAsStringSync(myFile.readAsStringSync());
}

void main() {
  final myFile = File('lib/23_12_11/source.txt');
  myFile.writeAsStringSync('filecopy');

  copy('lib/23_12_11/source.txt', 'lib/23_12_11/target.txt');

}

// 다른 방법
// void copy2(String source, String target) {
//   final myFile = File(source);
//
//   myFile.copy(target);
// }
