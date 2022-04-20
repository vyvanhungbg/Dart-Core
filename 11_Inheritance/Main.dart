import 'dart:io';

import 'Student.dart';

void main(List<String> args) {
  // print("abc");
  // Person person = Person();
  // person.Input();
  // person.Output();

  // Student student = Student(1, "Hung", "Bac Giang", 9, 7);
  // student.Output();
  // Student studentNoParamater = Student();
  // studentNoParamater.Output();
  List<Student> list = List.empty(growable: true);
  do {
    print("1. Thêm sinh viên");
    print("2. Hiển thị danh sách sinh viên");
    print("3. Tìm kiếm sinh viên theo id");
    print("4. Tìm kiếm sinh viên theo address");
    print("5. Xóa một sinh viên theo id");
    print("6. Kết thúc chương trình ");
    int choose = int.parse(stdin.readLineSync()!);
    switch (choose) {
      case 1:
        ThemSinhVien(list);
        break;
      case 2:
        HienThiDanhSachSinhVien(list);
        break;
      case 3:
        TimKiemSinhVienTheoID(list);
        break;
      case 4:
        TimKiemSinhVienTheoAddr(list);
        break;
      case 5:
        XoaMotSinhVienTheoID(list);
        break;
      case 6:
        print("Kết thúc chương trình ");
        return;
    }
  } while (true);
}

void XoaMotSinhVienTheoID(List<Student> list) {
  print("Nhập id sinh viên cần xóa ");
  int idInput = int.parse(stdin.readLineSync()!);
  int index = list.indexWhere((element) => element.id == idInput);
  if (index == -1) {
    print("Không tìm thấy sinh viên nào với mã id =$idInput ");
    return;
  }
  print("Tìm thấy sinh viên với mã id = $idInput");
  list.removeAt(index);
  print("Xóa thành công !");
}

void TimKiemSinhVienTheoAddr(List<Student> list) {
  print("Nhập address sinh viên cần tìm kiếm ");
  String addressInput = stdin.readLineSync()!;
  int index = list.indexWhere(
      (element) => element.address.toLowerCase() == addressInput.toLowerCase());
  if (index == -1) {
    print("Không tìm thấy sinh viên nào với address =$addressInput ");
    return;
  }
  print("Tìm thấy sinh viên với address = $addressInput");
  list[index].Output();
}

void TimKiemSinhVienTheoID(List<Student> list) {
  print("Nhập id sinh viên cần tìm kiếm ");
  int idInput = int.parse(stdin.readLineSync()!);
  int index = list.indexWhere((element) => element.id == idInput);
  if (index == -1) {
    print("Không tìm thấy sinh viên nào với mã id =$idInput ");
    return;
  }
  print("Tìm thấy sinh viên với mã id = $idInput");
  list[index].Output();
}

void HienThiDanhSachSinhVien(List<Student> list) {
  print("Danh sách sinh viên là : ");
  list.forEach((element) => element.Output());
}

void ThemSinhVien(List<Student> list) {
  print("Nhập một sinh viên mới ");
  Student student = Student();
  student.Input();
  list.add(student);
  print("Thêm sinh viên thành công !");
}
