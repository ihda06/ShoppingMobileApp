class CardsModel {
  String title;
  String detail;
  int color;
  String detailimage;

  CardsModel(this.title, this.detail, this.color, this.detailimage);
}

List<CardsModel> cards = cardsData
    .map(
      (item) => CardsModel(
          item['title'], item['detail'], item['color'], item['detailimage']),
    )
    .toList();

var cardsData = [
  {
    "title": "PROMO",
    "detail": "Gratis ongkir & disc up to 50%!",
    "color": 0xFF39A6A3,
    "detailimage": "assets/pictures/fz2546_smc_ecom-removebg-preview.png"
  },
  {
    "title": "HOT ITEM",
    "detail": "Adidas Ultraboost discount 70%!",
    "color": 0xFFBF1363,
    "detailimage": "assets/pictures/FW3277_BLT_eCom-removebg-preview(2).png"
  }
];

class Kategori {
  String nama;
  int id;

  Kategori(this.nama, this.id);
}

var kategoriData = [
  {
    "nama": "Running",
    "id": 1,
  },
  {
    "nama": "Old School",
    "id": 2,
  },
  {
    "nama": "Golf",
    "id": 3,
  },
  {
    "nama": "Sandals",
    "id": 4,
  },
  {
    "nama": "Football",
    "id": 5,
  }
];

List<Kategori> kategoris =
    kategoriData.map((item) => Kategori(item['nama'], item['id'])).toList();

List<int> ukurans = [35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46];
