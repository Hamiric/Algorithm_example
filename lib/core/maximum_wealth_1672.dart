int maximumWealth(List<List<int>> accounts) {

  // List<int> customer = [];
  int max = 0;

  for(int i = 0 ; i < accounts.length ; i ++){

    int tem = 0;
    for(int j = 0; j < accounts[i].length ; j ++){
      tem += accounts[i][j];
    }

    if(max < tem){
      max = tem;
    }
  }

  return max;
}
