void setZeroes(List<List<int>> matrix) {
  int col = matrix.length;
  int row = matrix[0].length;

  bool rowtrigger = matrix[0].contains(0);
  bool coltrigger = matrix.any((colmax) => colmax[0] == 0);

  // 첫번째 행과 열은 건들이지 않는다.
  for (int i = 1; i < col; i++) {
    for (int j = 1; j < row; j++) {
      // 0을 찾으면, 해당 위치의 첫번째 위치의 행 값과, 첫번째 위치의 열의 값을 0으로 만든다.
      if (matrix[i][j] == 0) {
        matrix[0][j] = 0;
        matrix[i][0] = 0;
      }
    }
  }

  // 첫번째 행과 열을 트리거로 밑, 옆의 부분을 0으로 만든다.
  // 첫번째 행 부분
  for (int i = 1; i < row; i++) {
    if (matrix[0][i] == 0) {
      for (int j = 1; j < col; j++) {
        matrix[j][i] = 0;
      }
    }
  }

  // 첫번째 열 부분
  for (int i = 1; i < col; i++) {
    if (matrix[i][0] == 0) {
      for (int j = 1; j < row; j++) {
        matrix[i][j] = 0;
      }
    }
  }

  // 마지막으로 첫번째 행과 열을 0으로 만든다.
  if(rowtrigger){
    for(int i = 0 ; i < row ; i ++){
      matrix[0][i] = 0;
    }
  }

  if(coltrigger){
    for(int i = 0 ; i < col ; i ++){
      matrix[i][0] = 0;
    }
  }
}