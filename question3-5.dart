import 'dart:math';

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
  // กำหนดความยาวรหัสผ่านเป็น 6 ตัว
  int length = 6;

  String password = generateRandomPassword(length);

  print('รหัสผ่านสุ่มที่สร้างขึ้นคือ: $password');
}

