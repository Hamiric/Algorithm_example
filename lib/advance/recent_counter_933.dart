import 'dart:collection';

class RecentCounter {
  late Queue<int> pingQue;

  RecentCounter() {
    pingQue = Queue<int>();
  }

  int ping(int t) {
    pingQue.addLast(t);

    while (true) {
      if (pingQue.first < t - 3000) {
        pingQue.removeFirst();
      } else {
        break;
      }
    }

    return pingQue.length;
  }
}
