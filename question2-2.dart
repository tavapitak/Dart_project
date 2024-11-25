import 'dart:io';

void main() {
  // รับค่าตัวอักษรจากผู้ใช้
  print('กรุณากรอกตัวอักษรภาษาอังกฤษ:');
  String? input = stdin.readLineSync();

  // ตรวจสอบว่าผู้ใช้กรอกข้อมูล
  if (input == null || input.isEmpty) {
    print('กรุณากรอกตัวอักษร');
    return;
  }

  // แปลงตัวอักษรให้เป็นตัวพิมพ์เล็กเพื่อตรวจสอบ
  String letter = input.trim().toLowerCase();

  // ตรวจสอบว่าเป็นตัวอักษรเดี่ยวหรือไม่
  if (letter.length != 1 || !RegExp(r'^[a-zA-Z]$').hasMatch(letter)) {
    print('กรุณากรอกตัวอักษรภาษาอังกฤษเพียงตัวเดียว');
    return;
  }

  // เช็คลิสต์ของสระภาษาอังกฤษ
  List<String> vowels = ['a', 'e', 'i', 'o', 'u'];

  // ตรวจสอบว่าตัวอักษรเป็นสระหรือพยัญชนะ
  if (vowels.contains(letter)) {
    print('$letter เป็นสระ');
  } else {
    print('$letter เป็นพยัญชนะ');
  }
}
