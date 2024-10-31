import 'package:algorithm_ex/advance/can_place_flowers_605.dart';
import 'package:algorithm_ex/advance/find_max_average_643.dart';
import 'package:algorithm_ex/advance/is_subsequence_392.dart';
import 'package:algorithm_ex/advance/reverse_vowels_345.dart';
import 'package:algorithm_ex/core/array_sign_1822.dart';
import 'package:algorithm_ex/core/can_make_arithmetic_progression_1502.dart';
import 'package:algorithm_ex/core/findthedifference_389.dart';
import 'package:algorithm_ex/advance/gceof_str_1071.dart';
import 'package:algorithm_ex/advance/kids_with_candies_1431.dart';
import 'package:algorithm_ex/core/is_anagram_242.dart';
import 'package:algorithm_ex/core/move_zeroes_283.dart';
import 'package:algorithm_ex/core/puls_one_66.dart';
import 'package:algorithm_ex/core/repeated_substring_pattern_459.dart';
import 'package:algorithm_ex/core/str_str_28.dart';

void main() {
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


  print('\n//////////\n');

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
}
