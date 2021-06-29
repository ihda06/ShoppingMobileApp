import 'package:flutter/cupertino.dart';

class Product {
  String nama;
  int harga;
  int kategori;
  String detailimage;
  Color color;

  Product(this.nama, this.harga, this.kategori, this.detailimage, this.color);
}

var productData = [
  {
    "nama": "Adidas Ultraboost",
    "harga": 450,
    "kategori": 1,
    "color": Color(0xFFF29191),
    "detailimage": "assets/pictures/fz2546_smc_ecom-removebg-preview.png"
  },
  {
    "nama": "Old Skool Pro",
    "harga": 700,
    "kategori": 2,
    "color": Color(0xFFFBC6A4),
    "detailimage": "assets/pictures/oldschool-removebg-preview.png"
  },
  {
    "nama": "Flame Old Skool",
    "harga": 699,
    "kategori": 2,
    "color": Color(0xFF94D0CC),
    "detailimage": "assets/pictures/oldschool2-removebg-preview.png"
  },
  {
    "nama": "Solarthon Primeblue",
    "harga": 500,
    "kategori": 3,
    "color": Color(0xFFC3AED6),
    "detailimage": "assets/pictures/gv9750_p_ecom-removebg-preview.png"
  },
  {
    "nama": "Sepatu Golf Spikeless",
    "harga": 500,
    "kategori": 3,
    "color": Color(0xFF726A95),
    "detailimage": "assets/pictures/s29262_blt_ecom-removebg-preview.png"
  },
  {
    "nama": "Sandal Adilette",
    "harga": 300,
    "kategori": 4,
    "color": Color(0xFFA0C1B8),
    "detailimage": "assets/pictures/fz1750_blt_ecom-removebg-preview.png"
  },
  {
    "nama": "Adidas Predator Freak.4",
    "harga": 800,
    "kategori": 5,
    "color": Color(0xFF949CDF),
    "detailimage": "assets/pictures/fy1040_blt_ecom-removebg-preview.png"
  },
  {
    "nama": "Super Sala",
    "harga": 450,
    "kategori": 5,
    "color": Color(0xFF70AF85),
    "detailimage": "assets/pictures/FV5456_FLT_eCom-removebg-preview.png"
  },
];

List<Product> products = productData
    .map((item) => Product(item['nama'], item['harga'], item['kategori'],
        item['detailimage'], item['color']))
    .toList();
