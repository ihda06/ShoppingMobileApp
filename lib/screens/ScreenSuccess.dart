import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PageSuccess extends StatelessWidget {
  const PageSuccess({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.black54,
          ),
          Container(
            width: 400,
            margin: EdgeInsets.only(left: 50, right: 50, top: 130, bottom: 130),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black45,
                      offset: Offset(0, 0.9),
                      blurRadius: 2,
                      spreadRadius: 0.5)
                ]
                // image: DecorationImage(image: AssetImage(""))
                ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  SizedBox(
                    height: 80,
                  ),
                  Text(
                    "Terima Kasih",
                    style: GoogleFonts.inter(
                        fontSize: 25, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  Text(
                    "Pesanan anda telah kami terima",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                        fontSize: 30, fontWeight: FontWeight.w300),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Silahkan Cek email anda untuk pemberitahuan lebih lanjut",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                        fontSize: 17, fontWeight: FontWeight.w300),
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).popUntil((route) => route.isFirst);
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => HomeScreen()));
            },
            child: Align(
              alignment: Alignment(0, 0.875),
              child: Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color(0xFFc4c4c4),

                  // image: DecorationImage(image: AssetImage(""))
                ),
                child: Icon(
                  Icons.close,
                  size: 40,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0, -0.725),
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 8),
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.greenAccent,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black45,
                        offset: Offset(0, 0.9),
                        blurRadius: 2,
                        spreadRadius: 0.5)
                  ]
                  // image: DecorationImage(image: AssetImage(""))
                  ),
              child: Icon(
                Icons.check,
                size: 80,
                color: Colors.green,
              ),
            ),
          )
        ],
      ),
    );
  }
}
