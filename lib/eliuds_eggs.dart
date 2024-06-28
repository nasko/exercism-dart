class EggCounter {
  int count(int n) {
    var eggsCount = 0;
    while (n > 0) {
      eggsCount += (n % 2 > 0) ? 1 : 0;
      n = n ~/ 2;
    }
    return eggsCount;
  }
}
