int arraySign(List<int> nums) {
  int sign = 1;

  for (int i = 0; i < nums.length; i++) {
    if (nums[i] < 0) {
      sign *= -1;
    } else if (nums[i] == 0) {
      sign *= 0;
      return sign;
    } else {
      sign *= 1;
    }
  }

  return sign;
}
