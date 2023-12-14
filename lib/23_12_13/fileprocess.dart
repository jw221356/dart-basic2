import 'dart:io';

void main() {

  Future<void> asyncExam() async {
    final file1 = File("lib/23_12_13/sample.csv");
    final file2 = File("lib/23_12_13/sample_copy.csv");

    if(await file1.exists()){
      final val = await file1.readAsString();

      await file2.writeAsString(val.replaceAll("한석봉", "김석봉"));

      print(await file2.readAsString());
    }
  }
  asyncExam();

}