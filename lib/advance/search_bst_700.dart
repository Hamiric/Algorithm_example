import 'package:algorithm_ex/class.dart';

// BST (이진 탐색 트리)란,
// 왼쪽노드에는 root 보다 작은 숫자,
// 오른쪽 노드에는 root 보다 큰 숫자가 배열된다.
TreeNode? searchBST(TreeNode? root, int val) {
  if (root == null) {
    return null;
  }

  TreeNode? leftNode = root.left;
  TreeNode? rightNode = root.right;

  if(root.val == val){
    return root;
  } else if (root.val < val){
    return searchBST(rightNode, val);
  } else {
    return searchBST(leftNode, val);
  }
}
