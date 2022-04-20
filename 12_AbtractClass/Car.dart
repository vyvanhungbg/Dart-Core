import 'dart:io';

import 'Vehicles.dart';

class Car extends Vehicles {
  late String _color;

  Car(String id, String maker, String model, int year, double price,
      String color)
      : super(id, maker, model, year, price) {
    this._color = color;
  }

  String get color => _color;
  set color(String color) => _color = color;

  void Input() {
    super.Input();
    print("Nhập color : ");
    _color = stdin.readLineSync()!;
  }

  void Output() {
    super.Output();
    print("{color = $_color}");
  }
}
