import 'dart:io';

const oneSecond = Duration(seconds: 1);
const fileNames = ["file_one", "file_two", "file_three"];

Future<void> printWithDelayTypeOne(String message) async {
  await Future.delayed(oneSecond);
  print(message);
}

Future<void> printWithDelayTypeTwo(String message) {
  return Future.delayed(oneSecond).then((_) {
    print(message);
  });
}

Future<void> createDescriptions(Iterable<String> objects) async {
  for (var object in objects) {
    try {
      var file = File("$object.txt");
      if (await file.exists()) {
        var modified = await file.lastModified();
        print('File for $object already exists. It was modified on $modified.');
        continue;
      }
      await file.create();
      await file.writeAsString('Start describing $object in this file.');
    } on IOException catch (e) {
      print('Cannot create description for $object: $e');
    }
  }
}

void main() {
  printWithDelayTypeOne("Type One");
  printWithDelayTypeTwo("Type Two");

  createDescriptions(fileNames);
}
