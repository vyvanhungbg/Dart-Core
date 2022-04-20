import 'Car.dart';
import 'Truck.dart';
import 'Vehicles.dart';

void main(List<String> args) {
  List<Vehicles> list = List.empty(growable: true);
  list.add(Car("1", "maker", "model", 1, 5.6, "color"));
  list.add(Truck("id", "maker", "model", 1, 5, 5));
  list.forEach((element) => element.Output());
}
