import 'dart:collection';

String removeStars(String s) {

  /* Time Limit
  
  // 이 연산이 좀 많이 걸리는듯?
  List<String> sList = s.split('').toList();

  int idxList = sList.length;

  for(int i = 0 ; i < idxList ; i ++){
    if(sList[i] == '*'){
      i--;
      sList.removeAt(i);
      sList.removeAt(i);
      i--;
      idxList -= 2;
    }
  }

  return sList.join();
  */

  Queue<String> removeStars = Queue<String>();

  for(int i = 0 ; i < s.length ; i ++){
    if(s[i] != '*'){
      removeStars.add(s[i]);
    } else {
      removeStars.removeLast();
    }
  }

  return removeStars.join();
}
