import 'dart:io';

import 'Person.dart';

class Student extends Person {
  late int _maths;
  late int _physics;
  void Input() {
    super.Input();
    print("Nhập maths : ");
    _maths = int.parse(stdin.readLineSync()!);
    print("Nhập physics : ");
    _physics = int.parse(stdin.readLineSync()!);
  }

  Student(
      [int id = 0,
      String name = "",
      String address = "",
      int maths = 0,
      int physics = 0])
      : super(id, name, address) {
    this._maths = maths;
    this._physics = physics;
  }

  void Output() {
    super.Output();
    print("{math = $_maths, physics = $_physics, total = ${Total()}");
  }

  int get maths => _maths;
  int get physics => _physics;

  int Total() => _maths + _physics;
}
