import 'dart:math';
import 'dart:io';
String generateRandomPassword(int length) {
  const String characters = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#\$%^&*()-_=+';
  Random random = Random();

  String password = '';
  for (int i = 0; i < length; i++) {
    int index = random.nextInt(characters.length);
    password += characters[index];
  }

  return password;
}

void main() {
  // ขอให้ผู้ใช้กรอกความยาวของรหัสผ่าน
  print('กรุณากรอกความยาวของรหัสผ่าน:');
  int length = int.parse(stdin.readLineSync()!);

  // สร้างรหัสผ่านสุ่ม
  String password = generateRandomPassword(length);

  // แสดงผลลัพธ์รหัสผ่าน
  print('รหัสผ่านสุ่มที่สร้างขึ้นคือ: $password');
}
