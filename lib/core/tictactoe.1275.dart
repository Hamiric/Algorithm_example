String tictactoe(List<List<int>> moves) {

  List<List<String>> gameboard = [['0','0','0'],['0','0','0'],['0','0','0']];

  for(int i = 0 ; i < moves.length ; i ++){
    if(i % 2 == 0){
      gameboard[moves[i][1]][moves[i][0]] = 'A';
    } else {
      gameboard[moves[i][1]][moves[i][0]] = 'B';
    }
  }

  // 가로일직선 승리
  for(int i = 0 ; i < 2 ; i ++){
    
  }

  // 세로일직선 승리


  // 대각선 승리


  return 'Pending';
}
