class HighScores {
  List<int> scores;

  HighScores(this.scores);

  int latest() {
    return scores.last;
  }

  int personalBest() {
    var _scores = List<int>.from(scores);
    _scores.sort();
    return _scores.last;
  }

  List<int> personalTopThree() {
    var _scores = List<int>.from(scores);
    _scores.sort();
    return _scores.reversed.take(3).toList();
  }
}
