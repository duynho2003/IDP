import 'Animal.dart';

class Dog extends Animal {
  Dog (String ten, int tuoi, String mota) : super.tenTuoiMota(ten, tuoi, mota) {}

  //goi phuong thuc tieng keu
  @override
  void tiengKeu(){
    print("Gau gau");
  }
}