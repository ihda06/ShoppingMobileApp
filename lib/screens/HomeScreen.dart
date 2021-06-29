import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping/models/cards_model.dart';
import 'package:shopping/models/product_model.dart';
import 'package:shopping/screens/ProfileScreen.dart';
import 'package:shopping/screens/DetailPageScreen.dart';
import 'AboutScreen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 10,
          title: Row(
            children: <Widget>[
              Image.asset(
                "assets/pictures/sneakers.png",
                height: 50,
                width: 50,
              ),
              Text(
                "KickOut",
                style: GoogleFonts.ramabhadra(
                    color: Color.fromRGBO(35, 30, 35, 1),
                    fontSize: 20,
                    fontWeight: FontWeight.w200),
              ),
            ],
          ),
        ),
        body: Stack(
          children: [
            Container(
              child: ListView(physics: ClampingScrollPhysics(), children: [
                SizedBox(
                  height: 25,
                ),
                //Greeting
                Greeting(),
                //banner card promotion
                BannerCardPromotion(),
                SizedBox(
                  height: 20,
                ),
                //kategori
                Kategori(),
                SizedBox(
                  height: 20,
                ),
                //layout produk
                KatalogProduk(),
                SizedBox(
                  height: 120,
                ),
              ]),
            ),
            Navbar(
              idx: 1,
            ),
          ],
        ));
  }
}

class Greeting extends StatelessWidget {
  const Greeting({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16, bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hello",
            style: GoogleFonts.inter(
                color: Color.fromRGBO(35, 30, 35, 1),
                fontSize: 18,
                fontWeight: FontWeight.w500),
          ),
          Text(
            "Sneakers Peeps!",
            style: GoogleFonts.inter(
                color: Color.fromRGBO(35, 30, 35, 1),
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class KatalogProduk extends StatelessWidget {
  const KatalogProduk({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
          physics: ScrollPhysics(),
          padding: EdgeInsets.only(left: 16, right: 16),
          shrinkWrap: true,
          itemCount: products.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.7,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20),
          itemBuilder: (context, index) => ItemProduk(
              product: products[index],
              press: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailPage(
                            product: products[index],
                          ))))),
    ));
  }
}

class BannerCardPromotion extends StatelessWidget {
  const BannerCardPromotion({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 199,
      child: ListView.builder(
        padding: EdgeInsets.only(left: 16, right: 6),
        scrollDirection: Axis.horizontal,
        itemCount: cards.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(right: 5),
            height: 199,
            width: 344,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Color(cards[index].color),
            ),
            child: Stack(
              children: [
                Positioned(
                    left: 140,
                    top: 40,
                    child: Container(
                      width: 200,
                      height: 200,
                      child: Image.asset(cards[index].detailimage),
                    )),
                Positioned(
                    left: 30,
                    top: 35,
                    child: Text(
                      cards[index].title,
                      style: GoogleFonts.inter(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w500),
                    )),
                Positioned(
                    left: 30,
                    top: 65,
                    child: Text(cards[index].detail,
                        style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w200)))
              ],
            ),
          );
        },
      ),
    );
  }
}

class ItemProduk extends StatelessWidget {
  final Product product;
  final Function press;
  const ItemProduk({
    Key key,
    this.product,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.black38,
                blurRadius: 2,
                offset: Offset(0.1, 0.1),
              )
            ]),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: product.color,
                    borderRadius: BorderRadius.circular(15)),
                child: Image.asset(product.detailimage),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(left: 15, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.nama,
                      style: GoogleFonts.inter(
                          fontSize: 13,
                          color: Colors.black87,
                          fontWeight: FontWeight.normal),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Rp.${product.harga.toString()}.000",
                      style: GoogleFonts.inter(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Kategori extends StatefulWidget {
  @override
  _KategoriState createState() => _KategoriState();
}

class _KategoriState extends State<Kategori> {
  int selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 16),
        height: 40,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: kategoris.length,
          itemBuilder: (context, index) => buildKategori(index),
        ));
  }

  Widget buildKategori(int index) {
    return GestureDetector(
        onTap: () {
          setState(() {
            selectedindex = index;
            // produkkategori = CategorySearch(selectedindex);
          });
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            kategoris[index].nama,
            style: GoogleFonts.inter(
              color: selectedindex == index ? Colors.black : Colors.black45,
              fontSize: 20,
            ),
          ),
        ));
  }
}

class Navbar extends StatelessWidget {
  final int idx;

  const Navbar({Key key, this.idx}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int index0 = 0;
    int index1 = 1;
    int index2 = 2;
    return Align(
      alignment: Alignment(0, 0.9),
      child: Container(
        height: 80,
        width: 350,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50),
            boxShadow: [
              BoxShadow(
                color: Colors.black38,
                blurRadius: 3,
                offset: Offset(0, 1.5),
              )
            ]),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Profil()));
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      idx == index0
                          ? 'assets/icons/user(3).svg'
                          : 'assets/icons/user(2).svg',
                      height: 35,
                      color: idx == index0 ? Color(0xFF39A6A3) : Colors.black45,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text("PROFIL",
                        style: GoogleFonts.inter(
                            fontSize: 15,
                            color: idx == index0
                                ? Color(0xFF39A6A3)
                                : Colors.black45,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      idx == index1
                          ? 'assets/icons/home(1).svg'
                          : 'assets/icons/home.svg',
                      height: 35,
                      color: idx == index1 ? Color(0xFF39A6A3) : Colors.black45,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text("HOME",
                        style: GoogleFonts.inter(
                            fontSize: 15,
                            color: idx == index1
                                ? Color(0xFF39A6A3)
                                : Colors.black45,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => About()));
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      idx == index2
                          ? 'assets/icons/info(1).svg'
                          : 'assets/icons/info.svg',
                      height: 35,
                      color: idx == index2 ? Color(0xFF39A6A3) : Colors.black45,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text("ABOUT",
                        style: GoogleFonts.inter(
                            fontSize: 15,
                            color: idx == index2
                                ? Color(0xFF39A6A3)
                                : Colors.black45,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
