int score(String s) {

  var pointsByCharGroup = {
    'aeioulnrst': 1,
    'dg': 2,
    'bcmp': 3,
    'fhvwy': 4,
    'k': 5,
    'jx': 8,
    'qz': 10,
  };

  int score = 0;
  for (var i = 0; i < s.length; i++) {
    for (var charGroup in pointsByCharGroup.keys) {
      if (charGroup.contains(s[i].toLowerCase())) {
        score += pointsByCharGroup[charGroup]!;
        break;
      }
    }
  }
  return score;
}


