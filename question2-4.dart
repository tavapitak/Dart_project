void main() {

  for (int multiplier = 1; multiplier <= 9; multiplier++) {
    print('ตารางสูตรคูณแม่ $multiplier');
    for (int i = 1; i <= 12; i++) {
      int result = multiplier * i;
      print('$multiplier x $i = $result');
    }
    
    print('');
  }
}
