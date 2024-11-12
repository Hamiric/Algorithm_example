bool isRobotBounded(String instructions) {

  const north = 0;
  // const west = 1;
  // const south = 2;
  // const east = 3;

  List<List<int>> directionList = [[0,1],[-1,0],[0,-1],[1,0]];
  List<int> location = [0,0];
  int count = north;

  for(int i = 0; i < instructions.length ; i ++){
    if(instructions[i] == 'G') {
      List<int> direction = directionList[count];

      location[0] += direction[0];
      location[1] += direction[1];
    } else if(instructions[i] == 'L'){
      count ++;
      if(count > 3) count %= 4;
    } else if(instructions[i] == 'R'){
      count --;
      if(count < 0) count += 4;
    }
  }

  if(count != north){
    return true;
  }

  if(location[0] == 0 && location[1] == 0){
    return true;
  }

  return false;
}
