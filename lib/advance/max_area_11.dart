import 'dart:math';

int maxArea(List<int> height) {

  int right = 0;
  int left = height.length - 1;

  // [길이, index]
  List<int> rodOne = [height[right],right];
  List<int> rodTwo = [height[left],left];

  int volum = min(rodOne[0],rodTwo[0]) * (rodOne[1] - rodTwo[1]).abs();

  while(true){
    if(rodOne[0] < rodTwo[0]){
      right ++;
      rodOne = [height[right],right];
    } else {
      left --;
      rodTwo = [height[left],left];
    }

    if(right == left){
      break;
    }

    int tmpVolum = min(rodOne[0],rodTwo[0]) * (rodOne[1] - rodTwo[1]).abs();

    if(tmpVolum > volum){
      volum = tmpVolum;
    }
  }

  return volum;
}
