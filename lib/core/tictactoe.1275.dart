String tictactoe(List<List<int>> moves) {
  /*
  List<List<String>> gameboard = [['0','0','0'],['0','0','0'],['0','0','0']];

  for(int i = 0 ; i < moves.length ; i ++){
    if(i % 2 == 0){
      gameboard[moves[i][1]][moves[i][0]] = 'A';
    } else {
      gameboard[moves[i][1]][moves[i][0]] = 'B';
    }
  }
  */

  List<String> gameboard = [];
  int gamesize = 3;

  // 게임보드 초기화
  for (int i = 0; i < gamesize * gamesize; i++) {
    gameboard.add('D');
  }

  for (int i = 0; i < moves.length; i++) {
    int landing = moves[i][0] + (moves[i][1] * gamesize);

    // 1 은 A, -1은 B
    if (i % 2 == 0) {
      gameboard[landing] = 'A';
    } else {
      gameboard[landing] = 'B';
    }
  }

  for (int i = 0; i < gamesize; i++) {
    // 가로일직선 승리 
    if (gameboard[(gamesize * i)] == gameboard[(gamesize * i) + 1] &&
        gameboard[(gamesize * i) + 1] == gameboard[(gamesize * i) + 2] &&
        gameboard[(gamesize * i)] == gameboard[(gamesize * i) + 2]) {
      if (gameboard[(gamesize * i)] != 'D') {
        print('가로');
        return gameboard[(gamesize * i)];
      }
    }

    // 세로일직선 승리
    if (gameboard[i] == gameboard[i + 3] &&
        gameboard[i + 3] == gameboard[i + 6] &&
        gameboard[i] == gameboard[i + 6]) {
      if (gameboard[i] != 'D') {
        print('세로');
        return gameboard[i];
      }
    }
  }

  // 대각선 승리
  if (gameboard[0] == gameboard[4] &&
      gameboard[4] == gameboard[8] &&
      gameboard[0] == gameboard[8]) {
    if (gameboard[4] != 'D') {
      print('대각A');
      return gameboard[4];
    }
  } else if (gameboard[gamesize - 1] == gameboard[4] &&
      gameboard[4] == gameboard[6] &&
      gameboard[gamesize - 1] == gameboard[6]) {
    if (gameboard[4] != 'D') {
      print('대각B');
      return gameboard[4];
    }
  }

  // 무승부
  if (moves.length == 9) {
    return 'Draw';
  }

  return 'Pending';
}
