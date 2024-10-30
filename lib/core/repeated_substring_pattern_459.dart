bool repeatedSubstringPattern(String s) {
  List<String> s1 = s.split('').toList();

  for(int i = 1 ; i <= s1.length ~/ 2 ; i ++){
    if(s1.length % i == 0){
      var a = s1.sublist(0,i).join().toString();
      String b = a * (s1.length ~/ i);
      if(b == s) {
        return true;
      }
    }
  }

  return false;
}
