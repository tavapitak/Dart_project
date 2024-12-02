class Camera {
  int _id;
  String _brand;
  String _color;
  double _price;

  Camera(this._id, this._brand, this._color, this._price);
  int get id => _id;
  set id(int value) => _id = value;
  String get brand => _brand;
  set brand(String value) => _brand = value;
  String get color => _color;
  set color(String value) => _color = value;
  double get price => _price;
  set price(double value) => _price = value;

  void display() {
    print("ID: $id, Brand: $brand, Color: $color, Price: \$${price.toStringAsFixed(2)}");
  }
}

void main() {
  Camera camera1 = Camera(1, "Canon", "Black", 500.99);
  Camera camera2 = Camera(2, "Nikon", "Silver", 600.50);
  Camera camera3 = Camera(3, "Sony", "White", 750.75);

  List<Camera> cameraList = [camera1, camera2, camera3];

  for (Camera camera in cameraList) {
    camera.display();
  }
}