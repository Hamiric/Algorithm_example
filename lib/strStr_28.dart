int strStr(String haystack, String needle) {
  var p = haystack.indexOf(needle);

  if (needle.isEmpty) {
    return -1;
  } else {
    return p;
  }
}
