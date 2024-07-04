class Hamming {
  num distance(String s, String t) {
    if (s.length != t.length) {
      throw new ArgumentError('strands must be of equal length');
    }
    var hammingDiff = 0;
    for (var i = 0; i < s.length; i++) {
      if (s[i] != t[i]) {
        hammingDiff++;
      }
    }
    return hammingDiff;
  }
}
