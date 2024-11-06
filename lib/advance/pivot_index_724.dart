int pivotIndex(List<int> nums) {
  int left = 0;
  int right = nums.fold(0, (a, b) => a + b);

  for (int i = 0; i < nums.length; i++) {

    if(i == 0){
      right -= nums[i];
    } else {
      left += nums[i-1];
      right -= nums[i];
    }

    if (left == right) {
      return i;
    }
  }

  return -1;
}
