bool isSubsequence(String s, String t) {
  int pointer = 0;

  if (s.isEmpty) return true;

  for (int i = 0; i < t.length; i++) {
    if (s[pointer] == t[i]) {
      pointer++;
    }

    if (pointer == s.length) {
      return true;
    }
  }

  return false;
}
