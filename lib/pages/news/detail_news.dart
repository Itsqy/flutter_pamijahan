import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application_12/models/news.dart';

class DetailNews extends StatelessWidget {
  final BeritaModel itemNews;
  DetailNews({required this.itemNews});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      // appBar: AppBar(
      //   title: Text("Detail News"),
      //   backgroundColor: Navy,
      // ),
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Image.network(
                  'https://picsum.photos/seed/picsum/200/300',
                  // itemNews.imgPath!,
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
                SizedBox(height: 15),
                Text(
                  itemNews.judulBerita!,
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontSize: 18),
                ),
                SizedBox(
                  height: 25,
                ),
                SingleChildScrollView(
                  child: SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(Icons.person, color: Colors.white),
                          Text(
                            itemNews.penerbit!,
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                          SizedBox(width: 40),
                          Icon(Icons.date_range, color: Colors.white),
                          Text(
                            itemNews.tanggalTerbit!,
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Text(
                  itemNews.isiBerita!,
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600, color: Colors.white),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 15),
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.redAccent,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
