import 'Animal.dart';

class Cat extends Animal {
  Cat (String ten, int tuoi, String mota) : super.tenTuoiMota(ten, tuoi, mota) {}

  //goi phuong thuc tieng keu
  @override
  void tiengKeu(){
    print("Meo meo");
  }
}