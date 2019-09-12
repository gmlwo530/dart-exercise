class Animal {
  String name;
  DateTime birth;

  // constructor
  Animal(this.name, this.birth) {}

  Animal.noBirth(String name) : this(name, null);

  int get birthYear => birth?.year; // read-only non-final property

  void describe() {
    print("Animal name : $name");
    if (birth != null) {
      int years = DateTime.now().difference(birth).inDays ~/ 365;

      print('Birth Year : $birthYear ($years years ago)');
    } else {
      print("Not Birth");
    }
  }
}

class Food {
  String name = "Cereal";
  void descibeFood() {
    print("Food : $name");
  }
}

class Dog extends Animal with Food {
  String type;
  Dog(String name, DateTime birth, this.type) : super(name, birth);
}

void main() {
  var dog = Animal("love", DateTime(1994, 4, 30));
  dog.describe();

  var cat = Animal("chichi", null);
  cat.describe();

  var typedDog = Dog("charm", DateTime(1999, 04, 11), "Dragon");
  typedDog.describe();
  typedDog.descibeFood();
}
