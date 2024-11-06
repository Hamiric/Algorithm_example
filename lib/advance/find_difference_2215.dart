List<List<int>> findDifference(List<int> nums1, List<int> nums2) {

  Set<int> nums1set = nums1.toSet();
  Set<int> nums2set = nums2.toSet();

  return [nums1set.difference(nums2set).toList(),nums2set.difference(nums1set).toList()];
}
