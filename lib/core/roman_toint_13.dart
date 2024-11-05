int romanToInt(String s) {
  var roma = s.split('').toList();
  List<int> romantoint = [];
  int sum = 0;

  for (int i = 0; i < roma.length; i++) {
    switch (roma[i]) {
      case 'I':
        romantoint.add(1);
      case 'V':
        romantoint.add(5);
      case 'X':
        romantoint.add(10);
      case 'L':
        romantoint.add(50);
      case 'C':
        romantoint.add(100);
      case 'D':
        romantoint.add(500);
      case 'M':
        romantoint.add(1000);
    }
  }

  for (int i = 0; i < romantoint.length; i++) {
    if(i+1 == romantoint.length){
      sum += romantoint[i];
      break;
    }

    if(romantoint[i+1] > romantoint[i]){
      sum -= romantoint[i];
    } else{
      sum += romantoint[i];
    }
  }

  return sum;
}
