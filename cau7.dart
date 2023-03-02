//Create a map with name, phone keys and store some values to it. Use where to find all keys that have length 4.
void main() {
  Map<String, String> phoneBook = {
    "Alice": "1234567",
    "Bob": "2345678",
    "Charlie": "3456789",
    "Dave": "4567890",
  };
  
  Iterable<String> keysWithLength4 = phoneBook.keys.where((key) => key.length == 4);

  print("Keys with length 4:");
  keysWithLength4.forEach((key) => print(key));
}
