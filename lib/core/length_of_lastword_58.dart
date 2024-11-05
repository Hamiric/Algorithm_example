int lengthOfLastWord(String s) {

  var word = s.split(' ').toList();

  int lastword = 0;
  for(int i = word.length - 1 ; i > -1 ; i --){
    if(word[i] != ''){
      lastword = i;
      break;
    }
  }

  var lastwordlen = word[lastword].length;

  return lastwordlen;
}
