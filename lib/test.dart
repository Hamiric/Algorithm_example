int test(String s) {

  var word = s.split(' ').toList();

  int lastword = 0;
  for(int i = word.length -1 ; i > -1 ; i --){
    if(word[i] != ''){
      lastword = i;
      break;
    }
  }

  return word[lastword].length;
}

int test1_2(String s) {

  var word = s.trim().split(' ');

  return word[word.length - 1].length;
}



String test2(String s){

  return s.toLowerCase();
}