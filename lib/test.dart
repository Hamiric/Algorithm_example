bool test(List<int> arr) {
  arr.sort();

  // 2 < arr.length << 1000
  int diff = arr[1] - arr[0];

  for (int i = 1; i < arr.length; i++) {
    if (arr[i] - arr[i - 1] != diff) {
      return false;
    }
  }

  return true;
}
