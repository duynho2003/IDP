import 'Animal.dart';

class Tiger extends Animal {
  Tiger (String ten, int tuoi, String mota) : super.tenTuoiMota(ten, tuoi, mota) {}

  //goi phuong thuc tieng keu
  @override
  void tiengKeu(){
    print("Grừ...grừ...");
  }
}