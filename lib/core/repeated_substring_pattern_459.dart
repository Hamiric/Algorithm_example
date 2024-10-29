bool repeatedSubstringPattern(String s) {
  List<String> s1 = s.split('');
  List<String> sp = [];

/*
  for (int i = 1; i < s1.length; i++) {
    for (int j = 0; i + j < s1.length; j++) {
      if (i > j) {
        var a = s1.sublist(j, i+j).join();
        sp.add(a);
      }
    }
  }
*/

  for (int i = 1; i < s1.length; i++) {
    var a = s1.sublist(0, i).join();
    sp.add(a);
  }

  for(int i = 0; i < sp.length ; i ++){
    if(s.length % sp[i].length == 0){
      String s1 = sp[i] * (s.length ~/ sp[i].length);
      if(s == s1){
        return true;
      }
    }
  }

  return false;
}
