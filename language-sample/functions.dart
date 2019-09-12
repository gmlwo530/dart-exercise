// We recommend specifying the types of each function’s arguments and return value:
int fibonacci(int n) {
  if (n == 0 || n == 1) return n;
  return fibonacci(n - 1) + fibonacci(n - 2);
}

void main() {
  print(fibonacci(20));

  var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
  // arrow function
  flybyObjects.where((name) => name.contains("turn")).forEach(print);
}
