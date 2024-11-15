bool uniqueOccurrences(List<int> arr) {

  Map<int,int> unique = {};

  for(int i = 0 ; i < arr.length ; i ++){
    if(unique[arr[i]] == null){
      unique[arr[i]] = 1;
    } else {
      unique[arr[i]] = unique[arr[i]]! + 1;
    }
  }

  var uniqueValue = unique.values.toList();
  for(int i = 0; i < uniqueValue.length-1 ; i ++){
    for(int j = i+1 ; j <uniqueValue.length ; j ++){
      if(uniqueValue[i] == uniqueValue[j]){
        return false;
      }
    }
  }

  return true;
}
