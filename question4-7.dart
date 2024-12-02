void main() {
  // Create a map with 'name' and 'phone' as keys
  Map<String, String> phonebook = {
    "arm": '4851',
    "mew": '5847',
    "beam": '8858',
    "tiw": '3968',
    "tong": '5555'
  };

  // Use where to find all keys with length 4
  var keysWithLength4 = phonebook.keys.where((key) => key.length == 4);

  // Print the result
  print('Keys with length 4: $keysWithLength4');
}