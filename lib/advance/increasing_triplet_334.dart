bool increasingTriplet(List<int> nums) {

  // 아이디어

  /*

  [1,2,0,3] 의 경우

    2st 값이 없데이트 되었다는 의미는, 이전에 1st값이 반드시 존재했었다는것을 의미 (이전 시점의 1st 값보다는 반드시 크다)
    |     
    |     * <---- 3st도 마찬가지, 따라서 지금까지의 2st보다 큰 값이 있다는건, 결국 1st 2st 3st 이렇게 점진적으로 증가하는 sub sequence가 존재한다는것을 의미
    *   
 *    
       *
 1  2  0  3

 */
  
  // 두 값 모두 최댓값으로 초기화
  int first = double.maxFinite.toInt();
  int second = double.maxFinite.toInt();

  for (int num in nums) {
    if (num <= first) {
      first = num;
    } else if (num <= second) {
      second = num;
    } else {
      return true;
    }
  }
  return false;
}