class WordCount {
  Map<String, int> countWords(String s) {
    Map<String, int> wordCount = {};
    var matches = new RegExp(r"\b\w+'\w+|\w+\b").allMatches(s.toLowerCase());
    List<String> words = matches.map((match) => match.group(0)!).toList();

    for (var w in words) {
      if (!wordCount.containsKey(w)) {
        wordCount[w] = 1;
      } else {
        wordCount[w] = 1 + wordCount[w]!;
      }
    }
    return wordCount;
  }
}
