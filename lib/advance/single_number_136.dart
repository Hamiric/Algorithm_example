/*
int singleNumber(List<int> nums) {
  nums.sort();

  int len = nums.length;

  while (true) {
    if (len < 2) {
      break;
    }

    if (nums[0] == nums[1]) {
      nums.removeAt(1);
      nums.removeAt(0);
      len -= 2;
    } else {
      break;
    }
  }

  return nums[0];
}
*/

// 정식답변
int singleNumber(List<int> nums) {
  int result = 0;

  for (int i = 0; i < nums.length; i++) {
    // XOR 연산자 ^
    // 숫자값에서의 XOR 연산은 다음과 같이 작동한다.
    // a ^ a = 0
    // a ^ 0 = a
    // a ^ b = a + b
    // a ^ b ^ c = c ^ b ^ a (교환, 결합법칙)

    // a ^ b ^ c ^ a = a ^ a ^ b ^ c = 0 ^ b ^ c =  b ^ c
    result = result ^ nums[i];
  }
  return result;
}
