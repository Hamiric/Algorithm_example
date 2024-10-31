double findMaxAverage(List<int> nums, int k) {
  int sum = 0;

  for (int i = 0; i < k; i++) {
    sum += nums[i];
  }

  int max = sum;

  for (int i = 0; i + k < nums.length; i++) {
    sum = sum - nums[i] + nums[i + k];
    if (max < sum) {
      max = sum;
    }
  }

  return max / k;
}
