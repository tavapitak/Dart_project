import 'dart:io';

void createUser(String name, int age, {bool isActive = true}) {
  // แสดงข้อมูลของผู้ใช้
  print('ชื่อ: $name');
  print('อายุ: $age');
  print('สถานะการใช้งาน: ${isActive ? 'Active' : 'Inactive'}');
}

void main() {
  // รับค่าชื่อจากคีย์บอร์ด
  print('กรุณากรอกชื่อ:');
  String? name = stdin.readLineSync();

  // รับค่าจากคีย์บอร์ดเพื่อกรอกอายุ
  print('กรุณากรอกอายุ:');
  int age = int.parse(stdin.readLineSync()!); // ใช้ int.parse() เพื่อแปลงเป็นจำนวนเต็ม

  // รับค่าจากคีย์บอร์ดเพื่อระบุสถานะการใช้งาน (ค่าเริ่มต้นคือ true)
  print('กรุณาระบุสถานะการใช้งาน (พิมพ์ "active" หรือ "inactive")');
  String? status = stdin.readLineSync();

  // กำหนดค่า isActive ตามที่ผู้ใช้กรอก หรือใช้ค่าเริ่มต้น
  bool isActive = (status != null && status.toLowerCase() == 'active') ? true : false;

  // เรียกใช้ฟังก์ชัน createUser เพื่อแสดงผลลัพธ์
  createUser(name ?? 'ไม่ทราบชื่อ', age, isActive: isActive);
}
