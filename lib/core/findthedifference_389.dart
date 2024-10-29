String findTheDifference(String s, String t) {

  List<String> s2 = s.split('');
  List<String> t2 = t.split('');
  
  int i = 0;
  while(i < s2.length){
    
    for(int j = 0; j < t2.length ; j ++){
      if(s2[i] == t2[j]){
        t2.removeAt(j);
        i++;
        break;
      }
    }
  }

  return t2[0];
}
