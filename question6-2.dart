class House {
  int id;
  String name;
  double price;

  House(this.id, this.name, this.price);

  void display() {
    print("ID: $id, Name: $name, Price: \$${price.toStringAsFixed(0)}");
  }
}

void main() {
  House house1 = House(1, "Cozy Cottage", 120000);
  House house2 = House(2, "Modern Villa", 300000);
  House house3 = House(3, "Luxury Penthouse", 750000);

  List<House> houseList = [house1, house2, house3];

  for (House house in houseList) {
    house.display();
  }
}