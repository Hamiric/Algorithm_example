bool judgeCircle(String moves) {
  // Map은 value값을 nullable 한 변수로 취급한다 (dart에서 nullsafty가 활성화 된 경우)
  Map<String, int> robotrolation = {'x': 0, 'y': 0};

  for (int i = 0; i < moves.length; i++) {
    switch (moves[i]) {
      case 'U':
        robotrolation['y'] = (robotrolation['y'] ?? 0) + 1;
        break;
      case 'D':
        robotrolation['y'] = (robotrolation['y'] ?? 0) - 1;
        break;
      case 'L':
        robotrolation['x'] = (robotrolation['x'] ?? 0) - 1;
        break;
      case 'R':
        robotrolation['x'] = (robotrolation['x'] ?? 0) + 1;
        break;
    }
  }

  if(robotrolation['x'] == 0 && robotrolation['y'] == 0){
    return true;
  }

  return false;
}
