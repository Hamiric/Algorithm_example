bool canPlaceFlowers(List<int> flowerbed, int n) {
  var a = flowerbed.map((num) => num + 1).toList();

  int p = 0;
  while (p < a.length) {
    if (n < 1) break;

    if (a[p].isEven) {
      p += 2;
    } else {
      if (a[p - 1].isOdd && a[p + 1].isOdd) {
        a[p] = 2;
        n--;
        p += 2;
      } else {
        p++;
      }
    }
  }

  if (n < 1) {
    return true;
  } else {
    return false;
  }
}
