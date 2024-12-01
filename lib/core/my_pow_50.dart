double myPow(double x, int n) {

  if(n == 0){
    return 1;
  }

  if(n < 0){
    n = -n;
    x = 1 / x;
  }

  double halfPow = myPow(x, n ~/ 2);
  return (n % 2 == 0) ? halfPow * halfPow : halfPow * halfPow * x;
}

/*
double myPow(double x, int n) {
  if (n == 0) return 1; // x^0 = 1
  if (n < 0) {
    x = 1 / x; // n이 음수일 경우 x를 역수로
    n = -n;    // n을 양수로 변환
  }
  
  double halfPow = myPow(x, n ~/ 2); // x^(n/2) 계산
  return (n % 2 == 0) ? halfPow * halfPow : halfPow * halfPow * x; // 홀수, 짝수에 따른 처리
}
*/