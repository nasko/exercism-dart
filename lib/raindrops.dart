class Raindrops {
  String convert(int i) {
    String pl = '';
    if (0 == i%3) {
      pl += 'Pling';
    }
    if (0 == i%5) {
      pl += 'Plang';
    }
    if (0 == i%7) {
      pl += 'Plong';
    }
    return pl.isEmpty ? i.toString() : pl;
  }
}
