class Laptop {
  String id;
  String name;
  String ram;

  // Parameterized constructor
  Laptop(this.id, this.name, this.ram);

  // Method to display laptop details
  void display() {
    print("Laptop ID: $id");
    print("Laptop Name: $name");
    print("Laptop RAM: $ram");
  }
  @override
  String toString() {
    return 'id: ${this.id},name: ${this.name},ram: ${this.ram}';
  }
}

void main() {
  // Creating 3 objects of Laptop
  Laptop laptop1 = Laptop("01", "Dell XPS", "16GB");;
  laptop1.display();
}