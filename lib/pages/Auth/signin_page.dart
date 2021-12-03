import 'package:flutter/material.dart';
import 'package:flutter_application_12/loading_button.dart';
import 'package:flutter_application_12/providers/auth_provider.dart';
import 'package:flutter_application_12/providers/theme_provider.dart';
import 'package:flutter_application_12/theme/theme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController usernameController =
      TextEditingController(text: '');

  final TextEditingController passwordController =
      TextEditingController(text: '');

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    final color =
        Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
            ? Colors.amber
            : primarycolor;

    AuthProvider authProvider = Provider.of<AuthProvider>(context);

    handleLogin() async {
      setState(() {
        isLoading = true;
      });

      if (await authProvider.login(
        username: usernameController.text,
        password: passwordController.text,
      )) {
        Navigator.pushNamed(context, '/main-page');
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: kOrangeColor,
            content: Text(
              'gagal login',
              textAlign: TextAlign.center,
            ),
          ),
        );

        setState(() {
          isLoading = false;
        });
      }
    }

    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 129),
              Center(
                child: Text(
                  'Masuk',
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                      fontSize: 36,
                      fontWeight: semiBold,
                      color: color,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 250,
              ),
              Text(
                'Username',
                style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                        fontSize: 14, fontWeight: semiBold, color: color)),
              ),
              SizedBox(
                height: 4,
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                height: 59,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey)),
                child: Center(
                  child: TextFormField(
                    controller: usernameController,
                    decoration:
                        InputDecoration.collapsed(hintText: 'Tulis Sini Bang'),
                  ),
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Text(
                'Password',
                style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                        fontSize: 14, fontWeight: semiBold, color: color)),
              ),
              SizedBox(
                height: 4,
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                height: 59,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey)),
                child: Center(
                  child: TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration.collapsed(
                        hintText: 'Password Sini Bang'),
                  ),
                ),
              ),
              SizedBox(height: 25),
              Align(
                alignment: Alignment.topRight,
                child: Text(
                  'Lupa Password ?',
                  style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                    fontSize: 15,
                    fontWeight: semiBold,
                    color: color,
                  )),
                ),
              ),
              SizedBox(height: 40),
              InkWell(
                onTap: handleLogin,
                child: isLoading
                    ? LoadingButton()
                    : Container(
                        height: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: kOrangeColor),
                        child: Center(
                          child: Text(
                            'Masuk',
                            style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                    fontSize: 18,
                                    fontWeight: semiBold,
                                    color: Colors.white)),
                          ),
                        ),
                      ),
              ),
            ],
          ),
        ));
  }
}
