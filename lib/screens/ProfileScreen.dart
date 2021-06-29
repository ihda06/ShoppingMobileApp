import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping/screens/HomeScreen.dart';

class Profil extends StatelessWidget {
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
          Align(
            alignment: Alignment(0, 0),
            child: ListView(
              physics: ScrollPhysics(),
              children: [
                Container(
                  margin: EdgeInsets.only(left: 60, right: 60),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        height: 125,
                        width: 125,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(100),
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/pictures/33128525.jpg'))),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Adellia Santosa",
                        style: GoogleFonts.inter(
                            fontSize: 25,
                            color: Colors.black54,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "adelliasan@gmail.com",
                        style: GoogleFonts.inter(
                          fontSize: 15,
                          color: Colors.black54,
                        ),
                      ),
                      Text(
                        "0856123456789",
                        style: GoogleFonts.inter(
                          fontSize: 15,
                          color: Colors.black54,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Jln. Seoul, RT 04/01, Desa Mekarsari, Kecamatan Pasirkuda, Kabupaten Majalaya, Provinsi Aceh, Indonesia",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.inter(
                          fontSize: 12,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ),
                Profile(),
                SizedBox(
                  height: 125,
                )
              ],
            ),
          ),
          Navbar(
            idx: 0,
          )
        ],
      ),
    );
  }
}

class Profile extends StatelessWidget {
  final List<String> items = ["History", "Setting", "Logout"];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: ScrollPhysics(),
        shrinkWrap: true,
        itemCount: items.length,
        itemBuilder: (context, index) => Itemprofile(
              idx: items[index],
            ));
  }
}

class Itemprofile extends StatelessWidget {
  final String idx;
  const Itemprofile({
    Key key,
    this.idx,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16, right: 16, top: 20),
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                blurRadius: 1, offset: Offset(0, 2), color: Colors.black26)
          ]),
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              idx,
              style: GoogleFonts.inter(
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
