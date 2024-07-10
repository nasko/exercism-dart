class RnaTranscription {
  String toRna(String s) {
    var rnaNucleotidesByDnaNucleotides = {
      'G': 'C',
      'C': 'G',
      'T': 'A',
      'A': 'U',
    };

    var rna = '';
    for (var i = 0; i < s.length; i++) {
      if (rnaNucleotidesByDnaNucleotides.containsKey(s[i])) {
        rna += rnaNucleotidesByDnaNucleotides[s[i]]!;
      }
    }
    return rna;
  }
}
