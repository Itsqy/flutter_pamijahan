import 'package:flutter/material.dart';
import 'package:flutter_application_12/pages/salary/detail_salary_page.dart';
import 'package:flutter_application_12/theme/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class SalaryPage extends StatefulWidget {
  const SalaryPage({Key? key}) : super(key: key);

  @override
  _SalaryPageState createState() => _SalaryPageState();
}

class _SalaryPageState extends State<SalaryPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Data Karyawan",
            style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w600, fontSize: 20),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            padding: EdgeInsets.all(15),
            height: 65,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(blurRadius: 2, spreadRadius: 2, color: kOrangeColor)
                ]),
            child: Row(
              children: <Widget>[
                Text('1'),
                SizedBox(width: 15),
                Text('Nama Lengkap'),
                SizedBox(width: 15),
                Text('data'),
                Spacer(),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/detail-salary');
                  },
                  //   Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //           builder: (context) => DetailSalary()));
                  // },
                  icon: Icon(Icons.view_agenda_outlined),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
