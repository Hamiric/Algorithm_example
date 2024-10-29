bool isAnagram(String s, String t) {
  List<String> s1 = s.split('');
  List<String> t1 = t.split('');

  if (s1.length != t1.length) {
    return false;
  }

  s1.sort((a, b) {
    return a.compareTo(b);
  });

  t1.sort((a, b) => a.compareTo(b));


  for (int i = 0; i < s1.length; i++) {
    for (int j = 0; j < t1.length; j++) {
      if (s1[i] == t1[j]) {
        t1.removeAt(j);
        break;
      }
    }
  }

  if (t1.isEmpty) {
    return true;
  } else {
    return false;
  }
}
