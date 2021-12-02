import 'package:flutter/material.dart';
import 'package:flutter_application_12/theme/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class LoadingButton extends StatelessWidget {
  const LoadingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: kOrangeColor),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 16,
              width: 16,
              child: CircularProgressIndicator(
                strokeWidth: 2,
                valueColor: AlwaysStoppedAnimation(
                  kWhitecolor,
                ),
              ),
            ),
            SizedBox(width: 5),
            Text(
              'Loading',
              style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                      fontSize: 18, fontWeight: semiBold, color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
