bool isAnagram(String s, String t) {
  List<String> s1 = s.split('')..sort();
  List<String> t1 = t.split('')..sort();

  if(s1.length != t1.length){
    return false;
  }

  return s1.join() == t1.join();
}
