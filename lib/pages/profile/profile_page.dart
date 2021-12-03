import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_12/models/login_karyawan.dart';
import 'package:flutter_application_12/providers/auth_provider.dart';
import 'package:flutter_application_12/providers/theme_provider.dart';
import 'package:flutter_application_12/theme/theme.dart';
import 'package:provider/provider.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color =
        Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
            ? Colors.grey.shade900
            : primarycolor;

    AuthProvider authProvider = Provider.of<AuthProvider>(context);
    LoginKaryawanModel loginKaryawanModel = authProvider.loginKaryawanModel;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 35),
      child: Column(
        children: <Widget>[
          SizedBox(height: 50),
          CircleAvatar(
            radius: 75,
            backgroundImage: AssetImage('images/img_profile.png'),
          ),
          SizedBox(height: 20),
          Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(loginKaryawanModel.namaKaryawan!),
              Text(
                loginKaryawanModel.status!,
              ),
            ],
          ),
          SizedBox(height: 20),
          buttonProfile(
              Icons.update_outlined, 'Update Profile', Icons.arrow_forward_ios),
          SizedBox(height: 20),
          buttonProfile(Icons.change_circle_outlined, 'Ubah Password',
              Icons.arrow_forward_ios),
          SizedBox(height: 20),
          InkWell(
              onTap: () {
                // Navigator.pushNamed(context, '/sign-in');
                showDialog(
                    context: (context),
                    builder: (context) {
                      return CupertinoAlertDialog(
                        title: Text('keluar'),
                        content: Text('yakin mau keluar?'),
                        actions: [
                          CupertinoDialogAction(
                            child: TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text(
                                'Batal',
                                style: TextStyle(
                                  color: Colors.amber,
                                ),
                              ),
                            ),
                          ),
                          CupertinoDialogAction(
                            child: TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/sign-in');
                              },
                              child: Text(
                                'oK',
                                style: TextStyle(
                                  color: Colors.amber,
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    });
              },
              child: buttonProfile(
                  Icons.exit_to_app, 'keluar', Icons.arrow_forward_ios)),
        ],
      ),
    );
  }

  Widget buttonProfile(IconData firstIcon, String title, IconData secondIcon) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 18, horizontal: 20),
      height: 67,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              spreadRadius: 2,
              blurRadius: 5,
              color: Colors.grey,
            )
          ]),
      child: Row(
        children: <Widget>[
          Icon(firstIcon),
          const SizedBox(width: 20),
          Expanded(child: Text(title)),
          Icon(secondIcon),
        ],
      ),
    );
  }
}
