//Add your 7 friend names to the list. Use where to find a name that starts with alphabet a.
void main() {
  List<String> friendNames = ["An", "Liêm", "Văn", "Tuấn", "Minh", "Long", "Anh"];
  
  //Dùng Iterable để truy cập vào các phần tử trong List
  Iterable<String> nameStartingWithA = friendNames.where((name) => name.startsWith("A"));
  var last = nameStartingWithA.join(", ");
  print("Friend name starting with 'A': $last");
  
}
