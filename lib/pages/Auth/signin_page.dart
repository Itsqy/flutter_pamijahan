import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                      fontWeight: FontWeight.w600,
                      color: Color(0xffFD7014),
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
                    textStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
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
                    textStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
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
                    fontWeight: FontWeight.w600,
                    color: Color(0xffFD7014),
                  )),
                ),
              ),
              SizedBox(height: 40),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/main-page');
                },
                child: Container(
                  height: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xffFD7014)),
                  child: Center(
                    child: Text(
                      'Masuk',
                      style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
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
