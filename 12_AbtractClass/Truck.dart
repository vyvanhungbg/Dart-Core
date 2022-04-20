import 'dart:io';

import 'Vehicles.dart';

class Truck extends Vehicles {
  late int _truckLoad;
  Truck(String id, String maker, String model, int year, double price,
      int truckLoad)
      : super(id, maker, model, year, price) {
    this._truckLoad = truckLoad;
  }
  int get truckload => _truckLoad;
  set color(int truckload) => _truckLoad = truckload;

  void Input() {
    super.Input();
    print("Nhập truckload : ");
    _truckLoad = int.parse(stdin.readLineSync()!);
  }

  void Output() {
    super.Output();
    print("{truckload = $_truckLoad}");
  }
}
