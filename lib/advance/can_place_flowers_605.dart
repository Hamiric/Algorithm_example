bool canPlaceFlowers(List<int> flowerbed, int n) {
  int len = flowerbed.length;

  if (n <= 0) return true;

  for (int i = 0; i < len; i++) {
    if (i == 0) {
      if (len == 1) {
        if (flowerbed[i] == 0) {
          flowerbed[i] = 1;
          n--;
          i++;
        }
      } else if (flowerbed[i] == 0 && flowerbed[i + 1] == 0) {
        flowerbed[i] = 1;
        n--;
        i++;
      }
    } else if (i > 0 && i + 1 < len) {
      if (flowerbed[i] == 0) {
        if (flowerbed[i - 1] == 0 && flowerbed[i + 1] == 0) {
          flowerbed[i] = 1;
          n--;
          i++;
        }
      }
    } else if (i == len - 1) {
      if (flowerbed[i] == 0) {
        if (flowerbed[i - 1] == 0) {
          flowerbed[i] = 1;
          n--;
          i++;
        }
      }
    }

    if (n <= 0) return true;
  }

  return false;
}
