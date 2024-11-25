import 'dart:io';
void main() {
  // รับค่าตัวเลขจากผู้ใช้
  print('กรุณากรอกเลข:');
  int? number = int.tryParse(stdin.readLineSync()!);

  if (number == null) {
    print('กรุณากรอกตัวเลขที่ถูกต้อง');
  } else {
    // ตรวจสอบว่าเป็นเลขคู่หรือเลขคี่
    if (number % 2 == 0) {
      print('เลข $number เป็นเลขคู่');
    } else {
      print('เลข $number เป็นเลขคี่');
    }
  }
}
