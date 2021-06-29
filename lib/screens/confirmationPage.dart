import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping/models/product_model.dart';
import 'package:shopping/screens/ScreenSuccess.dart';

class ConfirmationPage extends StatelessWidget {
  final Product product;
  final int ukuran;
  final int jumlah;

  const ConfirmationPage({Key key, this.product, this.ukuran, this.jumlah})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int x = jumlah * product.harga;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
                // width: 400,
                height: 120,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black45,
                          offset: Offset(0, 0.9),
                          blurRadius: 2,
                          spreadRadius: 0.5)
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                child: Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 16, top: 20, right: 220),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            product.nama,
                            style: GoogleFonts.inter(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Ukuran: $ukuran"),
                              Text("Jumlah: $jumlah")
                            ],
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment(0.9, 0),
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            boxShadow: [BoxShadow(offset: Offset(0, 0.5))],
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                            image: DecorationImage(
                                image: AssetImage(product.detailimage))),
                      ),
                    ),
                  ],
                )),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
              height: 50,
              margin: EdgeInsets.only(left: 16, right: 16),
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Colors.black45,
                    offset: Offset(0, 0.9),
                    blurRadius: 2,
                    spreadRadius: 0.5)
              ], color: Colors.white, borderRadius: BorderRadius.circular(30)),
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total : ",
                      style: GoogleFonts.inter(
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      "Rp. $x.000",
                      style: GoogleFonts.inter(
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
              )),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PageSuccess()));
            },
            child: Container(
                height: 50,
                margin: EdgeInsets.only(left: 100, right: 100),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black45,
                          offset: Offset(0, 0.9),
                          blurRadius: 2,
                          spreadRadius: 0.5)
                    ],
                    color: product.color,
                    borderRadius: BorderRadius.circular(30)),
                child: Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: Align(
                        alignment: Alignment(0, 0),
                        child: Text(
                          "Bayar",
                          style: GoogleFonts.inter(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )))),
          )
        ],
      ),
    );
  }
}

int hitung(int jml, int harga) {
  int hasil = jml * harga;
  return hasil;
}
