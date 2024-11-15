/*
List<int> productExceptSelf(List<int> nums) {
  List<int> mulList = [];
  int mul = 1;

  for (int i = 0; i < nums.length; i++) {
    for (int j = 0; j < nums.length; j++) {
      if (i != j) {
        mul *= nums[j];
      }
    }
    mulList.add(mul);
    mul = 1;
  }

  return mulList;
}
*/

List<int> productExceptSelf(List<int> nums) {
  int n = nums.length;
  List<int> result = List.filled(n, 1);

  // 왼쪽에서 곱 계산
  int leftProduct = 1;
  for (int i = 0; i < n; i++) {
    result[i] = leftProduct;
    leftProduct *= nums[i];
  }

  // 오른쪽에서 곱 계산
  int rightProduct = 1;
  for (int i = n - 1; i >= 0; i--) {
    result[i] *= rightProduct;
    rightProduct *= nums[i];
  }

  return result;
}