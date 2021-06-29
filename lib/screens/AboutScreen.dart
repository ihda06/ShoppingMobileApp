import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping/screens/HomeScreen.dart';

class About extends StatelessWidget {
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
            child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: ListView(
                children: [
                  SizedBox(
                    height: 25,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 100,
                        child: Stack(
                          children: [
                            Text(
                              "KickOut",
                              style: GoogleFonts.ramabhadra(
                                  fontSize: 50, fontWeight: FontWeight.bold),
                            ),
                            Positioned(
                              top: 60,
                              child: Text(
                                "Company",
                                style: GoogleFonts.ramabhadra(
                                    fontSize: 25, fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        "Tentang Kami",
                        style: GoogleFonts.inter(
                            fontSize: 25, fontWeight: FontWeight.w800),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi eu metus neque. Pellentesque egestas neque felis. Maecenas eget rutrum nisi. Sed sed tristique sem. Fusce et ex sed elit viverra finibus ut laoreet lacus. Curabitur a erat euismod eros bibendum bibendum sit amet non nisi. Vivamus feugiat eget nulla ac ultricies. Etiam tempus mattis enim iaculis auctor. Curabitur et ante a turpis luctus sagittis a non erat. In ornare purus nec mollis bibendum. Nam dapibus ipsum nibh, eu pretium metus condimentum eget. Vestibulum mattis augue est, in accumsan metus imperdiet et. Vestibulum ultricies molestie diam, sed hendrerit purus finibus in. Donec venenatis molestie leo, id congue nisl imperdiet eu. Morbi eget ex et orci convallis eleifend.",
                          style: GoogleFonts.inter(
                              fontSize: 13, color: Colors.black54)),
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        "Cabang",
                        style: GoogleFonts.inter(
                            fontSize: 25, fontWeight: FontWeight.w800),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi eu metus neque. Pellentesque egestas neque felis. Maecenas eget rutrum nisi. Sed sed tristique sem. Fusce et ex sed elit viverra finibus ut laoreet lacus. Curabitur a erat euismod eros bibendum bibendum sit amet non nisi. Vivamus feugiat eget nulla ac ultricies. Etiam tempus mattis enim iaculis auctor. Curabitur et ante a turpis luctus sagittis a non erat. In ornare purus nec mollis bibendum. Nam dapibus ipsum nibh, eu pretium metus condimentum eget. Vestibulum mattis augue est, in accumsan metus imperdiet et. Vestibulum ultricies molestie diam, sed hendrerit purus finibus in. Donec venenatis molestie leo, id congue nisl imperdiet eu. Morbi eget ex et orci convallis eleifend.",
                          style: GoogleFonts.inter(
                              fontSize: 13, color: Colors.black54)),
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        "Kontak",
                        style: GoogleFonts.inter(
                            fontSize: 25, fontWeight: FontWeight.w800),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("cust@kickout.com",
                          style: GoogleFonts.inter(
                              fontSize: 17, color: Colors.black54)),
                      Text("087788899988",
                          style: GoogleFonts.inter(
                              fontSize: 17, color: Colors.black54)),
                    ],
                  ),
                  SizedBox(
                    height: 125,
                  ),
                ],
              ),
            ),
          ),
          Navbar(
            idx: 2,
          ),
        ],
      ),
    );
  }
}
