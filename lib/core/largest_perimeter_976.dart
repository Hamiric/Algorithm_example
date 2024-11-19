int largestPerimeter(List<int> nums) {

  nums.sort();

  List<int> sortednums = nums.reversed.toList();

  print(sortednums);

  // 이 세 조건중 하나만 만족해도 삼각형이 그려진다.
  // 정렬을 통해 nums를 내림차순으로 정렬했고, a > b > c 라고 가정하자
  // a + b > c (무조건 만족)
  // a + c > b (무조건 만족)
  // b + c > a (이것만 생각하면 됨)


  // 3중 써야 되나 이거..?
  // 일단 해보는데 다른 방법이 없나?
  // 되긴.. 하네?
  // 아 문제의 위화감을 꺠달았다..
  // 길이가 가장 큰 삼각형을 만들 수 있는 경우라는 조건이 있었구나.
  // 그렇다면 a,b,c는 최대한 붙어 있어야 하겠구만
  // 왜냐하면, 최대한 붙어있는 abc가 조건에 맞지 않는다면, 
  // 자동적으로 뒤의 bc들은 조건에 맞지 않게 될테니까
  
  
  int a = sortednums[0];
  int b = sortednums[1];
  int c = sortednums[2];

  int sumabc = 0; 

  /*
  checkTriangel:
  for(int i = 0 ; i < sortednums.length - 2 ; i ++){
    a = sortednums[i];

    for(int j = i + 1 ; j < sortednums.length - 1 ; j ++){
      b = sortednums[j];

      for(int k = j + 1 ; k < sortednums.length ; k ++){
        c = sortednums[k];

        if(b + c > a){
          sumabc = a + b + c;
          break checkTriangel;
        }
      }
    }
  }
  */

  for(int i = 0 ; i < sortednums.length-2 ; i ++){
    a = sortednums[i];
    b = sortednums[i+1];
    c = sortednums[i+2];
    
    if(a < b + c){
      sumabc = a + b + c;
      break;
    }
  }

  return sumabc;
}
