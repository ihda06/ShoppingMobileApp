import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping/models/cards_model.dart';
import 'package:shopping/models/product_model.dart';

import 'package:shopping/screens/confirmationPage.dart';

int numukuran = 0;
int jumlah = 1;

class DetailPage extends StatelessWidget {
  final Product product;

  const DetailPage({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: AppBar(
        backgroundColor: product.color,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: 200),
            height: 500,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      spreadRadius: 5,
                      offset: Offset(0, -0.5),
                      blurRadius: 0.5,
                      color: Colors.black12)
                ]),
            child: Padding(
              padding: const EdgeInsets.only(left: 16, top: 40, right: 16),
              child: ListView(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Keterangan",
                        style: GoogleFonts.inter(
                            fontSize: 25, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi eu metus neque. Pellentesque egestas neque felis. Maecenas eget rutrum nisi. Sed sed tristique sem..",
                        style: GoogleFonts.inter(
                            fontSize: 15, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Ukuran",
                        style: GoogleFonts.inter(
                            fontSize: 25, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Ukuran(),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Jumlah",
                        style: GoogleFonts.inter(
                            fontSize: 25, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Jumlah(),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ConfirmationPage(
                                            product: product,
                                            jumlah: jumlah,
                                            ukuran: ukurans[numukuran],
                                          )));
                            },
                            child: Container(
                              width: 200,
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: product.color),
                              child: Align(
                                  alignment: Alignment(0, 0),
                                  child: Text(
                                    "BELI",
                                    style: GoogleFonts.inter(
                                        fontSize: 30,
                                        fontWeight: FontWeight.w800,
                                        color: Colors.white),
                                  )),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.7, -0.5),
            child: Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                  boxShadow: [BoxShadow(offset: Offset(0, 0.5))],
                  borderRadius: BorderRadius.circular(35),
                  color: Colors.white,
                  image:
                      DecorationImage(image: AssetImage(product.detailimage))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12, left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  search(product.kategori),
                  style: GoogleFonts.inter(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
                Text(
                  product.nama,
                  style: GoogleFonts.inter(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 130),
            padding: EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Harga",
                    style: GoogleFonts.inter(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.white)),
                SizedBox(
                  height: 5,
                ),
                Text("Rp. ${product.harga}.000",
                    style: GoogleFonts.inter(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Jumlah extends StatefulWidget {
  const Jumlah({Key key}) : super(key: key);

  @override
  _JumlahState createState() => _JumlahState();
}

class _JumlahState extends State<Jumlah> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              jumlah--;
            });
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: jumlah == 1
                ? SizedBox(
                    width: 30,
                  )
                : Icon(
                    Icons.remove,
                    size: 30,
                  ),
          ),
        ),
        Container(
          width: 70,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.black45)),
          child: Align(
            alignment: Alignment(0, 0),
            child: Text(
              jumlah.toString(),
              style: GoogleFonts.inter(fontSize: 30),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              jumlah++;
            });
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.add,
              size: 30,
            ),
          ),
        )
      ],
    );
  }
}

class Ukuran extends StatefulWidget {
  const Ukuran({Key key}) : super(key: key);

  @override
  _UkuranState createState() => _UkuranState();
}

class _UkuranState extends State<Ukuran> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: ScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 8, crossAxisSpacing: 10, mainAxisSpacing: 5),
        itemCount: ukurans.length,
        shrinkWrap: true,
        itemBuilder: (context, index) => itemUkuran(index));
  }

  Widget itemUkuran(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
          numukuran = index;
        });
      },
      child: Container(
        // height: 50,
        // width: 50,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
                width: 2,
                color: selectedIndex == index ? Colors.blue : Colors.black)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              ukurans[index].toString(),
              style: GoogleFonts.inter(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: selectedIndex == index ? Colors.blue : Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}

String search(int a) {
  final ketemu = kategoris.where((element) => element.id == a);
  String b;

  if (ketemu.isNotEmpty) {
    b = ketemu.first.nama.toString();
  } else {
    b = "ga ada";
  }
  return b;
}
