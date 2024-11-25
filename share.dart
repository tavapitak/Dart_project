import 'dart:io';
void main () {
 
  // รับยอดบิลทั้งหมดจากผู้ใช้
  print('กรุณากรอกยอดบิลทั้งหมด:');
  double Bill = double.parse(stdin.readLineSync()!);
 
  // รับจำนวนคนที่ร่วมทานอาหาร
  print('กรุณากรอกจำนวนคนที่ร่วมทาน:');
  int numberOfPeople = int.parse(stdin.readLineSync()!);
 
  // คำนวณยอดที่แต่ละคนต้องจ่าย
  double amountPerPerson = Bill / numberOfPeople;
 
  // แสดงผล
  print('ยอดที่แต่ละคนต้องจ่ายคือ: ฿$amountPerPerson');
 
}