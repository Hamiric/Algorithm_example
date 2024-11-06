int test(String s) {
  var roma = s.split('').toList();
  int sum = 0;
  Map<String, int> romanMap = {
    'I': 1,
    'V': 5,
    'X': 10,
    'L': 50,
    'C': 100,
    'D': 500,
    'M': 1000
  };

  for (int i = 0; i < roma.length; i++) {
    int current = romanMap[roma[i]] ?? 0;
    int next = (i + 1 < s.length) ? romanMap[s[i + 1]] ?? 0 : 0;

    if (current < next) {
      sum -= current;
    } else {
      sum += current;
    }
  }

  return sum;
}
