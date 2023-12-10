//i 번째 글자가 모음인지 알려주는 isVowel() 함수를 완성하시오
// 영어에서의 모음은 a, e, i, o, u 다섯가지이다

class Word{
  String word = '';

  bool isVowel(int i){
    return word.substring(i, i + 1) == 'a';
  }

//i 번째 글자가 자음인지 알려주는 isConsonant() 함수를 완성하시오
  bool isConsonant(int i){
    return false;
  }
}

void main() {

}


