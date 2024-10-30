List<int> plusOne(List<int> digits) {
  for (int i = (digits.length - 1); i >= 0; i--) {
    if (digits[i] != 9) {
      digits[i]++;
      break;
    } else {
      if (i == 0) {
        digits.add(0);
        digits[i] = 1;
      } else {
        digits[i] = 0;
      }
    }
  }

  return digits;
}
