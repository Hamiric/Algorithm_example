void moveZeroes(List<int> nums) {

  int pointer = 0;

  for(int i = 0 ; i < nums.length ; i ++){
    if(nums[i] != 0){
      nums[pointer] = nums[i];
      pointer ++;
    }
  }

  for(int j = pointer ; j < nums.length ; j ++){
    nums[j] = 0;
  }

  print(nums);
}