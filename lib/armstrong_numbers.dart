class ArmstrongNumbers {
  bool isArmstrongNumber(String numberString) {
    BigInt sum = BigInt.from(0);
    for (var i = 0; i < numberString.length; i++) {
      sum += BigInt.from(int.parse(numberString[i])).pow(numberString.length);
    }
    return sum.toString() == numberString;
  }
}
