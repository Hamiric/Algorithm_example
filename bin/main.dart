import 'package:algorithm_ex/core/core.dart';
import 'package:algorithm_ex/advance/advance.dart';


void main() {
  // 향후 복습이 필요한 문제는 * 표시
  // 1복습단계 *, 2복습단계 ** 이런식으로

/*
  // Core 문제
  // 389번 문제
  print(findTheDifference('sadb','sagdb'));  // g

  // 28번 문제
  print(strStr('leetcode', 'sad'));  // -1

  // 242번 문제
  print(isAnagram("rated","car"));  // false

  // 459번 문제
  print(repeatedSubstringPattern("abcabcabcabc"));  // true

  // 283번 문제
  moveZeroes([0, 1, 0, 3, 12, -3]);  // [1, 3, 12, -3, 0, 0]

  // 66번 문제
  print(plusOne([9, 9, 9, 9]));  // [1, 0, 0, 0, 0]

  // 1822번 문제
  print(arraySign([-1, -2, -3, -4, 3, 2, 1]));  // 1

  // 1502번 문제
  print(canMakeArithmeticProgression([3,5,1]));  // true

  // 896번 문제
  print(isMonotonic([1, 3, 2]));  // false

  // 13번 문제
  print(romanToInt("MCMXCIV"));  // 1994

  // 58번 문제
  print(lengthOfLastWord("   fly me   to   the moon  "));  // 4

  // 709번 문제
  print(toLowerCase("LOVeLY"));  // lovely

  // 682번 문제
  print(calPoints(["5","-2","4","C","D","9","+","+"]));  // 27

  // 657번 문제
  print(judgeCircle("RRDDLUU"));  // false

  // 1275번 문제
  print(tictactoe([[0,0],[2,0],[1,1],[2,1],[2,2]]));  // A

  // 1041번 문제
  print(isRobotBounded("GGLLGG"));  // true

  // 1672번 문제
  print(maximumWealth([[2,8,7],[7,1,3],[1,9,5]]));  // 17

  // 1572번 문제
  print(diagonalSum([[1,2,3],[4,5,6],[7,8,9]]));  // 25

  // 54번 문제
  print(spiralOrder([[1,2,3,4],[5,6,7,8],[9,10,11,12]]));  // [1,2,3,4,8,12,11,10,9,5,6,7]

  // 73번 문제 *
  List<List<int>> matrix73 = [[0,1,2,0],[3,4,5,2],[1,3,1,5]];
  setZeroes(matrix73);
  print(matrix73);  // [[0, 0, 0, 0], [0, 4, 5, 0], [0, 3, 1, 0]]
*/
  // 1491번 문제
  print(average([4000, 3000, 1000, 2000]));  // 2500.00000

  // 860번 문제
  print(lemonadeChange([5,5,10,10,20]));  // false

  // 976번 문제
  print(largestPerimeter([6, 3, 3, 2]));  // 8

  print('\n//////////\n');

/*
  // Advance 문제
  // 1071번 문제
  print(gcdOfStrings('ABC','ABCABC'));  // ABC

  // 1431번 문제
  print(kidsWithCandies([4,2,1,1,2],1));  // [true, false, false, false, false]

  // 605번 문제
  print(canPlaceFlowers([1,0,0,0,1,0,0],2));  // true

  // 345번 문제
  print(reverseVowels("leetcode"));  // leotcede

  // 392번 문제
  print(isSubsequence("abc","ahbgdc"));  // true

  // 643번 문제
  print(findMaxAverage([1,12,-5,-6,50,3],4));  // 12.75

  // 724번 문제
  print(pivotIndex([1, 7, 3, 6, 5, 6]));  // 3

  // 1732번 문제
  print(largestAltitude([-4,-3,-2,-1,4,3,2]));  // 0

  // 2215번 문제
  print(findDifference([1,2,3,3], [1,1,2,2]));  // [[3], []]

  // 151번 문제
  print(reverseWords("the sky is blue"));  // blue is sky the

  // 238번 문제
  print(productExceptSelf([-1,1,0,-3,3]));  // [0,0,9,0,0]

  // 1207번 문제
  print(uniqueOccurrences([-3,0,1,-3,1,1,1,-3,10,0]));  // true

  // 933번 문제 *
  RecentCounter recentCounter = RecentCounter();
  // 1, 2, 3, 3
  print('${recentCounter.ping(1)}, ${recentCounter.ping(100)}, ${recentCounter.ping(3001)}, ${recentCounter.ping(3002)}');

  // 206번 문제 *
  ListNode head = ListNode(5);
  reverseList(head);

  // 334번 문제 *
  print(increasingTriplet([2, 1, 5, 0, 4, 6]));  // true

  // 11번 문제 *
  print(maxArea([1,8,6,2,5,4,8,3,7]));  // 49

  // 104번 문제 *
  TreeNode root = TreeNode(3);
  print(maxDepth(root));  // 1
*/
  // 443번 문제 *
  print(compress(["a", "a", "b", "b", "c", "c", "c"]));

  // 1137번 문제
  print(tribonacci(6)); // 13

  // 2390번 문제
  print(removeStars('ab*cd**ef'));  // aef

  // 872번 문제
  TreeNode root1 = TreeNode(3);
  TreeNode root2 = TreeNode(5);
  print(leafSimilar(root1, root2));  // false
}
