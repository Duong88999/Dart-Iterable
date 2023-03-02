//Create a map with name, address, age, country keys and store values to it. Update country name to other country and print all keys and values. 

void main() {
  // Tạo một map chứa các thông tin cá nhân
  Map<String, dynamic> personalInfo = {
    "name": "John Doe",
    "address": "123 Main Street",
    "age": 30,
    "country": "USA",
  };

  // In ra các thông tin cá nhân ban đầu
  print("Personal information:");
  personalInfo.forEach((key, value) {
    print("$key: $value");
  });

  // Cập nhật giá trị của khóa "country"
  personalInfo["country"] = "Canada";

  // In ra các thông tin cá nhân sau khi cập nhật
  print("\nUpdated personal information:");
  personalInfo.forEach((key, value) {
    print("$key: $value");
  });
}
