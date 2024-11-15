/*
String reverseWords(String s) {
  List<String> splitWord = List.from(s.split(' ').toList().reversed);

  const String EMPTY = '';
  const String SPACE = ' ';

  for (int i = 0; i < splitWord.length; i++) {
    if (splitWord[i] == EMPTY) {
      splitWord.removeAt(i);
      i--;
    }
  }

  return splitWord.join(SPACE).trim();
}
*/

String reverseWords(String s) {
  final buffer = StringBuffer();
  int start = s.length - 1;
  int end = s.length - 1;

  for (int i = s.length - 1; i >= 0; i--) {
    if (i == 0 || (s[start - 1] == " " && s[end] != " ")) {
      final substring = s.substring(start, end + 1);
      if (substring == ' ') continue;
      if (!buffer.isEmpty) buffer.write(' ');
      buffer.write(substring);
      start = i - 1;
      end = i - 1;
    } else if (s[i] == " ") {
      end--;
      start--;
    } else {
      start--;
    }
  }

  return buffer.toString();
}
