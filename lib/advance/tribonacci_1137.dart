int tribonacci(int n) {
  int T0 = 0;
  int T1 = 1;
  int T2 = 1;

  switch (n) {
    case 0:
      return T0;
    case 1:
      return T1;
    case 2:
      return T2;
  }

  int i = 2;
  while (i < n) {
    int Tn = T0 + T1 + T2;

    T0 = T1;
    T1 = T2;
    T2 = Tn;
    i++;
  }

  return T2;
}
