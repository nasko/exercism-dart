class Bob {
  String response(String s) {
    s = s.trim();
    if (this.isSilence(s)) {
     return 'Fine. Be that way!';
    }
    bool isYell = this.isYell(s);
    bool isQuestion = this.isQuestion(s);
    if (isQuestion && isYell) {
      return 'Calm down, I know what I\'m doing!';
    }
    if (isQuestion) {
      return 'Sure.';
    }
    if (isYell) {
      return 'Whoa, chill out!';
    }
    return 'Whatever.';
  }

  bool isQuestion(String str) {
    return str.endsWith('?');
  }

  bool isYell(String str) {
    bool hasCaps = new RegExp(r"[A-Z]+").hasMatch(str);
    bool hasLows = new RegExp(r"[a-z]+").hasMatch(str);
    return hasCaps && !hasLows;
  }

  bool isSilence(String str) {
    return !new RegExp(r"[^\s\t\r\n]+").hasMatch(str);
  }
}
