class Animal {
  String ten = "";
  int tuoi = 0;
  String mota = "";

  //constructor ko tham so
  Animal();

  //constructor co 1 tham so
  Animal.ten(String ten) {
    this.ten = ten;
    tuoi = tuoi;
    mota = mota;
  }

  //constructor co 2 tham so
  Animal.tenTuoi(String ten, int tuoi) {
    this.ten = ten;
    this.tuoi = tuoi;
    mota = mota;
  }

  //constructor co 3 tham so
  Animal.tenTuoiMota(String ten, int tuoi, String mota) {
    this.ten = ten;
    this.tuoi = tuoi;
    this.mota = mota;
  }

  // in ra thong tin
  void xemThongTin() {
    print("Tên: $ten");
    print("Tuổi: $tuoi");
    print("Mô tả: $mota");
  }

  // tieng keu
  void tiengKeu(){
    print("Silence");
  }
}
