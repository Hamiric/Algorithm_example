String reverseVowels(String s) {
  List<String> vowel = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'];
  List<int> index = [];

  var a = s.split('').toList();

  for (int i = 0; i < a.length; i++) {
    if (vowel.contains(a[i])) {
      index.add(i);
    }
  }

  String p;
  for (int i = 0; i < index.length ~/ 2; i++) {
    p = a[index[i]];
    a[index[i]] = a[index[index.length - (i + 1)]];
    a[index[index.length - (i + 1)]] = p;
  }

  return a.join();
}
