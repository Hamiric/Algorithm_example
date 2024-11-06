int romanToInt(String s) {
  var roma = s.split('').toList();
  List<int> romanint = [];
  int sum = 0;

  for (int i = 0; i < roma.length; i++) {
    switch (roma[i]) {
      case 'I':
        romanint.add(1);
      case 'V':
        romanint.add(5);
      case 'X':
        romanint.add(10);
      case 'L':
        romanint.add(50);
      case 'C':
        romanint.add(100);
      case 'D':
        romanint.add(500);
      case 'M':
        romanint.add(1000);
    }
  }

  for (int i = 0; i < romanint.length; i++) {
    if (i + 1 == romanint.length) {
      sum += romanint[i];
      break;
    }

    if (romanint[i + 1] > romanint[i]) {
      sum -= romanint[i];
    } else {
      sum += romanint[i];
    }
  }

  return sum;
}

int romanToInt2(String s) {
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
