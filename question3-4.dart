import 'dart:io';

// ฟังก์ชัน calculateArea ที่คำนวณพื้นที่ของสี่เหลี่ยมผืนผ้า
// โดยรับ length และ width และมีค่าเริ่มต้นเป็น 1
double calculateArea({double length = 1, double width = 1}) {
  return length * width;
}

void main() {
  // ขอให้ผู้ใช้กรอกค่าความยาว (length)
  print('กรุณากรอกความยาว (length):');
  double length = double.parse(stdin.readLineSync()!);

  // ขอให้ผู้ใช้กรอกค่าความกว้าง (width)
  print('กรุณากรอกความกว้าง (width):');
  double width = double.parse(stdin.readLineSync()!);

  // คำนวณพื้นที่
  double area = calculateArea(length: length, width: width);

  // แสดงผลลัพธ์
  print('พื้นที่ของสี่เหลี่ยมผืนผ้าคือ: $area');
}
