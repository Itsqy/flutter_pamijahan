import 'package:flutter/material.dart';
import 'package:flutter_application_12/pages/Auth/signin_page.dart';
import 'package:flutter_application_12/pages/home/home_page.dart';
import 'package:flutter_application_12/pages/main_page.dart';
import 'package:flutter_application_12/pages/salary/detail_salary_page.dart';
import 'package:flutter_application_12/pages/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashScreen(),
        '/home-page': (context) => HomePage(),
        '/sign-in': (context) => SignInPage(),
        '/main-page': (context) => MainPage(),
        '/detail-salary': (context) => DetailSalary(),
      },
    );
  }
}
