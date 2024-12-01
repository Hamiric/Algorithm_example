String multiply(String num1, String num2) {
  BigInt num1BigInt = BigInt.parse(num1);
  BigInt num2BigInt = BigInt.parse(num2);

  String multiBigInt = (num1BigInt * num2BigInt).toString();

  print(multiBigInt);

  return multiBigInt;
}

  // num1 의 i 번째 자리와, num2의 j 번째 자리를 곱하면, i + j 와 i + j + 1 인덱스에 영향을 미침
  // 21 , 13 예시 > 273

  // num1의 0번째자리 => 2 , num2의 0번째 자리 = 1
  // 결과의 0번째자리와 1번째 자리에 영향을 미침
  // [2]00

  // num1의 1번째자리 => 1, num2의 0번째 자리 = 1
  // 2[1]0

  // num1의 0번째자리 => 2, num2의 1번째 자리 = 3
  // 2[1+6]0

  // num1의 1번쨰자리 => 1, num2의 1번째 자리 = 3
  // 27[3]

/*
String multiply(String num1, String num2) {

  int num1len = num1.length;
  int num2len = num2.length;
  List<int> result = List.filled(num1len + num2len, 0);

  for (int i = 0; i < num1len; i++) {
    for (int j = 0; j < num2len; j++) {
      // codeUnitAt 이란, 문자열에서 해당 index값에 해당하는 문자열을 int로 변환하는 메서드
      // 기존 result와의 합마저 한 후, 다시 result에 재배치 해야함
      int mul = int.parse(num1[i]) * int.parse(num2[j]);
      int sum = mul + result[i + j + 1];

      result[i + j + 1] = sum % 10;
      result[i + j] += sum ~/ 10;
    }
  }

  String resultStr = result.join();
  int firstNonZero = resultStr.indexOf(RegExp(r'[1-9]'));

  return firstNonZero == -1 ? "0" : resultStr.substring(firstNonZero);
}
*/
