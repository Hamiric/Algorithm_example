import 'advance.dart';

int maxDepth(TreeNode? root) {

  if(root == null) return 0;

  int rightdepth = maxDepth(root.right);
  int leftdepth = maxDepth(root.left);

  return 1 + (rightdepth > leftdepth ? rightdepth : leftdepth);
}
