import 'dart:io';

bool isEven(int number) {
  return number % 2 == 0;
}

void main() {
  print('กรุณากรอกตัวเลขเพื่อเช็คว่าเป็นเลขคู่หรือไม่:');
  
  // รับค่าจากคีย์บอร์ดโดยตรงและแปลงเป็น int
  int num = int.parse(stdin.readLineSync()!); // แปลงจาก String เป็น int โดยตรง


  bool result = isEven(num);

  if (result) {
    print('$num เป็นเลขคู่');
  } else {
    print('$num เป็นเลขคี่');
  }
}
