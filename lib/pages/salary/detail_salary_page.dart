import 'package:flutter/material.dart';
import 'package:flutter_application_12/theme/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailSalary extends StatelessWidget {
  const DetailSalary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: kOrangeColor,
          title: Text('D etail - Penggajian'),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'fulan',
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: kWhitecolor,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 2, color: kGreyColor, spreadRadius: 1)
                      ]),
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Data Karyawan',
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(color: kBlackColor),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(
                        thickness: 2,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            'Nama Lengkap',
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(color: kBlackColor),
                            ),
                          ),
                          Spacer(),
                          Text(
                            'Fulan',
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(color: kBlackColor),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Divider(
                            thickness: 2,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(
                        thickness: 2,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            'Jabatan',
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(color: kBlackColor),
                            ),
                          ),
                          Spacer(),
                          Text(
                            'Backend Developer',
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(color: kBlackColor),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Divider(
                            thickness: 2,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(
                        thickness: 2,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            'Status',
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(color: kBlackColor),
                            ),
                          ),
                          Spacer(),
                          Text(
                            'Kontrak',
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(color: kBlackColor),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Divider(
                            thickness: 2,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(
                        thickness: 2,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            'Nomor Handphone',
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(color: kBlackColor),
                            ),
                          ),
                          Spacer(),
                          Text(
                            '0898121331415',
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(color: kBlackColor),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Divider(
                            thickness: 2,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(
                        thickness: 2,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            'Username',
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(color: kBlackColor),
                            ),
                          ),
                          Spacer(),
                          Text(
                            'fulan',
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(color: kBlackColor),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Divider(
                            thickness: 2,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(
                        thickness: 2,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            'Tanggal Penggajian',
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(color: kBlackColor),
                            ),
                          ),
                          Spacer(),
                          Text(
                            'Nominal',
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(color: kBlackColor),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Divider(
                            thickness: 2,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(
                        thickness: 2,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            '2021-11-20',
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(color: kBlackColor),
                            ),
                          ),
                          Spacer(),
                          Text(
                            'Rp. 2,400,000',
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(color: kBlackColor),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Divider(
                            thickness: 2,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(
                        thickness: 2,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            '2021-11-20',
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(color: kBlackColor),
                            ),
                          ),
                          Spacer(),
                          Text(
                            'Rp. 400,000',
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(color: kBlackColor),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Divider(
                            thickness: 2,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(
                        thickness: 2,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            '2021-11-21',
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(color: kBlackColor),
                            ),
                          ),
                          Spacer(),
                          Text(
                            'Rp. 2,580,000',
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(color: kBlackColor),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Divider(
                            thickness: 2,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
