BigInt square(final int n) {
  if (0 >= n || n > 64) {
    throw new ArgumentError('square must be between 1 and 64');
  }
  return BigInt.from(2).pow(n-1);
}

BigInt total() {
  BigInt sum = BigInt.from(0);
  for (var i = 1; i<=64; i++) {
    sum += square(i);
  }
  return sum;
}
