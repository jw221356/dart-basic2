//i 번째 글자가 모음인지 알려주는 isVowel() 함수를 완성하시오
// 영어에서의 모음은 a, e, i, o, u 다섯가지이다

class Word {
  String word = '';

  bool isVowel(int i) {
    String vowel = word.substring(i, i + 1);
    return ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'].contains(vowel);
  }

  bool isConsonant(int i) {
    return !isVowel(i);
  }
}


