// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

import 'IVehicle.dart';

class Vehicles implements IVehicle {
  late String id;
  late String maker;
  late String model;
  late int year;
  late double price;
  @override
  void Input() {
    print("Nhập id :");
    id = stdin.readLineSync()!;
    print("Nhập maker : ");
    maker = stdin.readLineSync()!;
    print("Nhập model : ");
    model = stdin.readLineSync()!;
    print("Nhập year : ");
    year = int.parse(stdin.readLineSync()!);
    print("Nhập price : ");
    price = double.parse(stdin.readLineSync()!);
  }

  Vehicles(
    this.id,
    this.maker,
    this.model,
    this.year,
    this.price,
  ) {
    this.id = id;
    this.maker = maker;
    this.model = model;
    this.year = year;
    this.price = price;
  }

  @override
  void Output() {
    print(
        "{id = $id, maker = $maker, model =$model, year = $year, price = $price}");
  }

  @override
  String toString() {
    return 'Vehicles(id: $id, maker: $maker, model: $model, year: $year, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Vehicles && other.id == id;
  }
}
