import 'package:collection/collection.dart';

import 'advance.dart';

bool leafSimilar(TreeNode? root1, TreeNode? root2) {
  List<int> root1lastNodeVal = [];
  List<int> root2lastNodeVal = [];
  // 노드의 끝값 찾기
  printval(root1, root1lastNodeVal);
  printval(root2, root2lastNodeVal);

  // print(root1lastNodeVal);
  // print(root2lastNodeVal);

  final listEquality = ListEquality();

  return listEquality.equals(root1lastNodeVal, root2lastNodeVal);
}

// 배열은 매개변수로 넘어와도 주소복사 방식이라..
void printval(TreeNode? root, List<int> lastNodeVal) {
  if (root!.left == null && root.right == null) {
    lastNodeVal.add(root.val);
  } else {
    if (root.left != null) {
      printval(root.left, lastNodeVal);
    }
    if (root.right != null) {
      printval(root.right, lastNodeVal);
    }
  }
}
