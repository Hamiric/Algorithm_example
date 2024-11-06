int calPoints(List<String> operations) {
  List<int> list = [];
  int idx = -1;
  int cal = 0;

  for (int i = 0; i < operations.length; i++) {
    if (int.tryParse(operations[i]) != null) {
      int n = int.parse(operations[i]);
      list.add(n);
      cal += n;
      idx++;
    } else {
      if (operations[i] == 'C') {
        cal -= list[idx];
        list.removeAt(idx);
        idx--;
      } else if (operations[i] == 'D') {
        int m = list[idx] * 2;
        list.add(m);
        cal += m;
        idx++;
      } else if (operations[i] == '+') {
        int o = list[idx] + list[idx - 1];
        list.add(o);
        cal += o;
        idx++;
      }
    }
  }

  return cal;
}
