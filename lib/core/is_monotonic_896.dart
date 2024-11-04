bool isMonotonic(List<int> nums) {
  int trigger = 0;

  if(nums.length == 1){
    return true;
  }

  for (int i = 1; i < nums.length; i++) {
    if (trigger == 0) {
      if(nums[i] - nums[i-1] > 0){
        trigger = 1;
      } else if (nums[i]- nums[i-1] < 0) {
        trigger = -1;
      }
    } else {
      if((nums[i] - nums[i-1]) * trigger < 0){
        return false;
      }
    }
  }

  return true;
}
