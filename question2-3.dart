void main() {
  int multiplier = 5;
  
  print('ตารางสูตรคูณแม่ $multiplier');
  
  for (int i = 1; i <= 12; i++) {
    int result = multiplier * i;
    print('$multiplier x $i = $result');
  }
}
