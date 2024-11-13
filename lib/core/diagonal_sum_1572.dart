int diagonalSum(List<List<int>> mat) {

  int primarySum = 0;
  int secondarySum = 0;
  int sum = 0;

  int n = mat.length;

  for(int i = 0 ; i < n ; i ++){
    primarySum += mat[i][i];
    secondarySum += mat[i][n - 1 - i];
  }

  sum = primarySum + secondarySum;

  if(n % 2 != 0){
    int min = n ~/2;

    sum -= mat[min][min];
  }

  return sum;
}
