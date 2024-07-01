import 'dart:math';

class DifferenceOfSquares {
  num squareOfSum(int numbersCount) {
    var sum = 0;
    for (var i = 1; i <= numbersCount; i++) {
      sum += i;
    }
    return pow(sum, 2);
  }

  num sumOfSquares(int numbersCount) {
    num sum = 0;
    for (var i = 1; i <= numbersCount; i++) {
      sum += pow(i, 2);
    }
    return sum;
  }

  num differenceOfSquares(int numbersCount) {
    return squareOfSum(numbersCount) - sumOfSquares(numbersCount);
  }
}
