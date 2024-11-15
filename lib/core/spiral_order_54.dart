List<int> spiralOrder(List<List<int>> matrix) {

  int Maxcol = matrix.length;
  int Maxrow = matrix[0].length;

  int total = Maxcol * Maxrow;

  Map<String,bool> footprint = {};

  List<int> footprintorder = [];

  // col, row
  List<int> position = [0,0];
  
  const RIGHT = 0;
  // const DOWN = 1;
  // const LEFT = 2;
  // const UP = 3;
  List<List<int>> direction = [[0,1],[1,0],[0,-1],[-1,0]];

  // 첫 발자국 기록
  String positionkey = '${position[0]}-${position[1]}';
  footprint[positionkey] = true;
  footprintorder.add(matrix[position[0]][position[1]]);
  int count = 1;

  int dir = RIGHT;
  while(count < total){
    // 미리 가있는 더미 위치 생성
    List<int> postposition = [position[0],position[1]];

    // direction 방향으로 이동하고
    postposition[0] += direction[dir][0];
    postposition[1] += direction[dir][1];

    // 만약 이동한 postposition이 잘못된 위치라면,
    if(postposition[0] == Maxcol || postposition[1] == Maxrow || postposition[0] < 0 || postposition[1] < 0){
      // 방향을 옮기고
      dir = (dir + 1) % 4;
      continue;
    }

    positionkey = '${postposition[0]}-${postposition[1]}';
    // 만약 이미 footprint가 찍혀져 있다면
    if(footprint[positionkey] != null){
      // 방향을 옮기고
      dir = (dir + 1) % 4;
      continue;
    } else { // 안찍혀져 있다면
      // 진짜 position 이동후 footprint 찍기
      position = postposition;
      footprint[positionkey] = true;
      footprintorder.add(matrix[position[0]][position[1]]);
      count ++;
    }
  }

  return footprintorder;
}
