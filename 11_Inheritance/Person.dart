import 'dart:io';

class Person {
  late int id;
  late String name;
  late String address;
  Person([int id = 0, String name = "", String address = ""]) {
    this.id = id;
    this.name = name;
    this.address = address;
  }

  void Input() {
    print("Nhập id : ");
    id = int.parse(stdin.readLineSync()!);
    print("Nhập name : ");
    name = stdin.readLineSync()!;
    print("Nhập address : ");
    address = stdin.readLineSync()!;
  }

  void Output() {
    stdout.write("{id = $id, name = $name, address = $address}");
  }
}
