import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_12/models/konten.dart';
import 'package:flutter_application_12/models/login_karyawan.dart';
import 'package:flutter_application_12/providers/auth_provider.dart';
import 'package:flutter_application_12/providers/konten_provider.dart';
import 'package:flutter_application_12/providers/theme_provider.dart';
import 'package:flutter_application_12/theme/theme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);
    LoginKaryawanModel loginKaryawanModel = authProvider.loginKaryawanModel;

    KontenProvider kontenProvider = Provider.of<KontenProvider>(context);
    List<KontenModel> listKonten = kontenProvider.kontenModel;
    final color =
        Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
            ? Colors.grey.shade900
            : primarycolor;
    return Container(
      child: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(50),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey, spreadRadius: 3, blurRadius: 5),
                    ],
                    image: DecorationImage(
                        image: AssetImage('images/img_home.png'),
                        fit: BoxFit.cover)),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 155),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: color,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          // SizedBox(width: 40),
                          Text(
                            'selamat datang',
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            // 'fulan',
                            loginKaryawanModel.namaKaryawan!,
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          )
                        ],
                      ),
                      // 0() ->optional for overflow
                      SizedBox(width: 56),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'total gaji bulan ini',
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'RP.100.000,0',
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 26),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'konten Harian',
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            child: CarouselSlider(
                options: CarouselOptions(
                  height: 90,
                  enlargeCenterPage: true,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  // viewportFraction: 0.7,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                ),
                items: listKonten
                    .map(
                      (konten) => Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.amber.withOpacity(0.2),
                              spreadRadius: 7,
                              blurRadius: 8,
                              offset: Offset(4, -5),
                            ),
                          ],
                          image: DecorationImage(
                              image: AssetImage('images/img_konten.jpg'),
                              fit: BoxFit.fill),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              // 'judul Konten',
                              konten.judulKonten!,
                              maxLines: 2,
                            ),
                            Text(
                              // 'Isi Konten',
                              konten.isiKonten!,
                              maxLines: 2,
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    )
                    .toList()),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              ' karyawan',
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            width: MediaQuery.of(context).size.width - 30,
            height: MediaQuery.of(context).size.width - 30,
            child: GridView.count(
              primary: false,
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              childAspectRatio: 0.8,
              children: <Widget>[
                buildCard("", "", "", context),
                buildCard("", "", "", context),
                buildCard("", "", "", context),
                buildCard("", "", "", context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCard(
      String name, String imgPath, String employe, BuildContext context) {
    final color =
        Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
            ? Colors.grey.shade900
            : primarycolor;
    return Padding(
      padding: EdgeInsets.only(
        top: 15,
        bottom: 5,
        left: 3,
        right: 3,
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              spreadRadius: 6,
              blurRadius: 7,
              color: Colors.amber.withOpacity(0.2),
            ),
          ],
          color: color,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('developer'),
            SizedBox(height: 20),
            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/img_person.png'),
                    fit: BoxFit.contain),
              ),
            ),
            SizedBox(height: 20),
            Text('Tio'),
          ],
        ),
      ),
    );
  }
}
