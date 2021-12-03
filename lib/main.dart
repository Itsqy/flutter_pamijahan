import 'package:flutter/material.dart';
import 'package:flutter_application_12/pages/Auth/signin_page.dart';
import 'package:flutter_application_12/pages/home/home_page.dart';
import 'package:flutter_application_12/pages/main_page.dart';
import 'package:flutter_application_12/pages/salary/detail_salary_page.dart';
import 'package:flutter_application_12/pages/splash/splash_screen.dart';
import 'package:flutter_application_12/providers/auth_provider.dart';
import 'package:flutter_application_12/providers/konten_provider.dart';
import 'package:flutter_application_12/providers/news_provider.dart';
import 'package:flutter_application_12/providers/salary_provider.dart';
import 'package:flutter_application_12/providers/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AuthProvider()),
        ChangeNotifierProvider(create: (context) => BeritaProvider()),
        ChangeNotifierProvider(create: (context) => KontenProvider()),
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
        ChangeNotifierProvider(create: (context) => SalaryProvider()),
      ],
      builder: (context, _) {
        final changeTheme = Provider.of<ThemeProvider>(context);

        return MaterialApp(
          title: 'Flutter Demo',
          themeMode: changeTheme.themeMode,
          theme: MyThemes.lightTheme,
          darkTheme: MyThemes.darkTheme,

          // ThemeData(
          //   primarySwatch: Colors.blue,
          // ),

          debugShowCheckedModeBanner: false,
          routes: {
            '/': (context) => SplashScreen(),
            '/home-page': (context) => HomePage(),
            '/sign-in': (context) => SignInPage(),
            '/main-page': (context) => MainPage(),
            '/detail-salary': (context) => DetailSalary(),
          },
        );
      },
    );
  }
}
