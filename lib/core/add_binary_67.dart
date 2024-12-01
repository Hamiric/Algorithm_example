String addBinary(String a, String b) {
  int alen = a.length;
  int blen = b.length;
  int maxlen;

  // 0 보간
  if (alen > blen) {
    b = ('0' * (alen - blen)) + b;
    maxlen = alen;
  } else {
    a = ('0' * (blen - alen)) + a;
    maxlen = blen;
  }

  String addABReverse = '';

  int over = 0;
  for (int i = maxlen - 1; i >= 0; i--) {
    int anum = int.parse(a[i]);
    int bnum = int.parse(b[i]);

    int sum = anum + bnum + over;
    addABReverse = (sum % 2).toString() + addABReverse;
    over = sum ~/ 2;
  }

  // 마지막 자릿수
  if(over > 0){
    addABReverse = '1' + addABReverse;
  }

  return addABReverse;
}

void main(){
  print('답 : ${addBinary('11', '1')}');
}
