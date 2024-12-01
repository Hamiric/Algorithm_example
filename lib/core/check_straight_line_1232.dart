bool checkStraightLine(List<List<int>> coordinates) {
  // 직선이 되려면, 임의의 두점을 이은 직선은 모두 같은 직선위에 있어야 하므로
  // 즉, P0와 각각의 점들을 이은 각각의 기울기가 같으면 같은 직선위에 있다고 봐도 무방

  List<int> P0 = coordinates[0];
  List<int> P1 = coordinates[1];

  double inclinationP01 = (P1[1] - P0[1]) / (P1[0] - P0[0]);

  for (int i = 2; i < coordinates.length; i++) {
    List<int> Pn = coordinates[i];

    double inclinationP0n = (Pn[1] - P0[1]) / (Pn[0] - P0[0]);

    // 기울기가 0일때 (x축일때)
    if ((P1[0] - P0[0]) == (Pn[0] - P0[0]) && (P1[0] - P0[0]) == 0) {
      continue;
    }

    // 나머지 경우
    if (inclinationP0n != inclinationP01) {
      return false;
    }
  }

  return true;
}
