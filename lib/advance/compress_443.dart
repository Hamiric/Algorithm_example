// 이 답변도 일반적이라면 맞으나..
// 문제의 조건중 하나는 추가적인 메모리 사용은 상수 공간만 사용하라는 것 (O(1))
// 따라서 List<String>을 새로 사용한 이 답변은 틀렸다.
/*
int compress(List<String> chars) {
  List<String> changedChars = [];

  int count = 1;
  for (int i = 0; i < chars.length; i++) {
    String tmp = chars[i];

    // tmp가 마지막 글자를 가리킬 경우
    if(i+1 == chars.length){
      changedChars.add(tmp);
      if(count != 1){
        changedChars.addAll(count.toString().split('').toList());
      }
      break;
    }

    if(tmp != chars[i+1]){
      changedChars.add(tmp);
      if(count != 1){
        changedChars.addAll(count.toString().split('').toList());
        count = 1;
      }
    } else {
      count ++;
    }
  }

  return changedChars.length;
}
*/

// 정답 코드
int compress(List<String> chars) {
  int index = 0;
  int i = 0;

  while (i < chars.length) {
    String currentChar = chars[i];
    int count = 0;

    while (i < chars.length && chars[i] == currentChar) {
      i++;
      count++;
    }

    chars[index++] = currentChar;

    if (count > 1) {
      for (var c in count.toString().split('')) {
        chars[index++] = c;
      }
    }
  }

  chars.length = index;

  return index;
}
