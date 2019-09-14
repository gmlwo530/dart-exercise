import 'dart:io';

void main() {
  var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];

  readFiles(flybyObjects);
}

Future<void> readFiles(List<String> flybyObjects) async {
  try {
    for (var object in flybyObjects) {
      var description = await File('$object.txt').readAsString();
      print(description);
    }
  } on IOException catch (e) {
    print('Could not describe object: $e');
  } finally {
    flybyObjects.clear();
  }
}
