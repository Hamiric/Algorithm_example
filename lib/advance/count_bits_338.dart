List<int> countBits(int n) {
  // dp 배열을 n+1 크기로 초기화 (0으로 이루어진)
  // n = 4 이면, dp = [0,0,0,0,0]
  List<int> dp = List.filled(n + 1, 0);

  // >> 연산자는 비트 시프트 연산자
  // a >> b 는 a를 2진수로 변환한 후(32bit 기준), 오른쪽으로 b 만큼 이동한다는 뜻으로
  // 만약 int result = 5 >> 2 라면, result는
  // 5 -> 00000101 (2진수) / 00000101 을 오른쪽 2만큼 이동 / 00000001 -> 1 (10진수)
  // 따라서 result는 1 이 출력된다.

  // 또한 여기서 알 수 있는 점은
  // result = a >> b 에서 result는
  // a % 2^b 값이 도출된다는 점을 알 수 있다.


  // 따라서 이 해당 코드는
  // i = 5 일 경우
  // dp[5] = dp[5 >> 1] + ((5 >> 1) & 1); 이 되고,
  // dp[5] = dp[1] + (1 & 1) 이므로
  // dp[5] = 0 + 1 = 1 이 된다.
  for (int i = 1; i <= n; i++) {
    dp[i] = dp[i >> 1] + (i & 1);
  }

  return dp;
}