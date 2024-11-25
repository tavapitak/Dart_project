import 'dart:io';

// ฟังก์ชัน maxNumber ที่รับเลขสามตัวและคืนค่าตัวเลขที่มากที่สุด
int maxNumber(int num1, int num2, int num3) {
  return (num1 > num2)
      ? (num1 > num3 ? num1 : num3)
      : (num2 > num3 ? num2 : num3);
}

void main() {
  // ขอให้ผู้ใช้กรอกเลขสามตัว
  print('กรุณากรอกเลขตัวแรก:');
  int num1 = int.parse(stdin.readLineSync()!);  

  print('กรุณากรอกเลขตัวที่สอง:');
  int num2 = int.parse(stdin.readLineSync()!);  

  print('กรุณากรอกเลขตัวที่สาม:');
  int num3 = int.parse(stdin.readLineSync()!);  
  int result = maxNumber(num1, num2, num3);

  print('ตัวเลขที่มากที่สุดคือ: $result');
}
