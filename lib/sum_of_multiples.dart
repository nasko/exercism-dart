class SumOfMultiples {
  num sum(List<int> baseInts, int level) {
    Set<num> multiplies = {};
    baseInts.forEach((number) {
      findMultiplies(number, level, multiplies);
    });

    if (multiplies.isEmpty) {
      return 0;
    }

    return multiplies.reduce((a, b) => a + b);
  }

  void findMultiplies(int baseInt, int level, Set<num> multiplies) {
    if(0 == baseInt || baseInt >= level) {
      return;
    }
    for(int i = baseInt; i < level; i++ ) {
      if (0 == i%baseInt) {
        multiplies.add(i);
      }
    }
  }
}
