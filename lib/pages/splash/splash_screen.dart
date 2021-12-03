import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_application_12/providers/konten_provider.dart';
import 'package:flutter_application_12/providers/news_provider.dart';
import 'package:flutter_application_12/providers/salary_provider.dart';
import 'package:flutter_application_12/providers/theme_provider.dart';
import 'package:flutter_application_12/theme/theme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  getInit() async {
    await Provider.of<BeritaProvider>(context, listen: false).getAllBerita();
    await Provider.of<KontenProvider>(context, listen: false).getAllKonten();
    await Provider.of<SalaryProvider>(context, listen: false).getPenggajian();
    Timer(Duration(seconds: 5), () => Navigator.pushNamed(context, '/sign-in'));
  }

  @override
  void initState() {
    super.initState();
    getInit();
  }

  @override
  Widget build(BuildContext context) {
    final color =
        Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
            ? Colors.grey.shade900
            : primarycolor;

    return Scaffold(
      backgroundColor: color,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 93,
              height: 114,
              decoration: const BoxDecoration(
                image:
                    DecorationImage(image: AssetImage('images/ic_splash.png')),
              ),
            ),
            const SizedBox(height: 60),
            Text('Salary.id',
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                    fontSize: 24,
                    fontWeight: semiBold,
                    color: kWhitecolor,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
