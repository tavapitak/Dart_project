class Animal {
  int id;
  String name;
  String color;

  Animal({required this.id, required this.name, required this.color});
}

class Cat extends Animal {
  String sound;

  Cat({required int id, required String name, required String color, required this.sound})
      : super(id: id, name: name, color: color);

  void printDetails() {
    print('Cat Details:');
    print('ID: $id');
    print('Name: $name');
    print('Color: $color');
    print('Sound: $sound');
  }
}

void main() {
  Cat myCat = Cat(id: 1, name: 'Whiskers', color: 'White', sound: 'Meow');
  myCat.printDetails();
}