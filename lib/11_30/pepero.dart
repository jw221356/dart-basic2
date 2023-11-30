
void main() {
  String peperoString = "11111111111";
  int count = 0;
  int maxCount = 0;

  for (int i = 0; i < peperoString.length; i++) {
    if (peperoString[i] == '1') {
      count++;
      maxCount = (maxCount > count) ? maxCount : count;
    } else {
      count = 0;
    }
  }

  if (maxCount >= 11) {
    print("OK");
  } else {
    int extraPepero = 11 - maxCount;
    print("$extraPepero");
  }
}
