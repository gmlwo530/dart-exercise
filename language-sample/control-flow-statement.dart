void main() {
  var year = 2019;
  if (year >= 2000) {
    print('a');
  } else if (year < 2000) {
    print("b");
  }

  var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];

  for (var obj in flybyObjects) {
    print(obj);
  }

  for (int index = 0; index < flybyObjects.length; index++) {
    print(flybyObjects[index]);
  }
}
