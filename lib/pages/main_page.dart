import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_12/pages/home/home_page.dart';
import 'package:flutter_application_12/pages/news/news_page.dart';
import 'package:flutter_application_12/pages/profile/profile_page.dart';
import 'package:flutter_application_12/pages/salary/salary_page.dart';
import 'package:flutter_application_12/theme/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  var appBarTitle = 'salary.id';

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this)
      ..addListener(() {
        setState(() {
          switch (_tabController!.index) {
            case 0:
              appBarTitle = 'salary.id';
              break;
            case 1:
              appBarTitle = 'penggajian';
              break;
            case 2:
              appBarTitle = 'Berita';
              break;
            case 3:
              appBarTitle = 'profile';
              break;
          }
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kOrangeColor,
        title: Text(
          appBarTitle,
          style: GoogleFonts.montserrat(
              textStyle: TextStyle(fontSize: 25, fontWeight: semiBold)),
        ),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: Material(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 20),
            children: <Widget>[
              SizedBox(height: 75),
              Row(
                children: <Widget>[
                  CircleAvatar(
                    radius: 55,
                    backgroundImage: AssetImage('images/img_profile.png'),
                  ),
                  SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Salim',
                        style: GoogleFonts.montserrat(
                          textStyle:
                              TextStyle(fontSize: 35, color: kBlackColor),
                        ),
                      ),
                      Text(
                        'Wibu',
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                            fontSize: 19,
                            color: kBlackColor,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 50),
              Divider(
                thickness: 2,
              ),
              ListTile(
                leading: Icon(
                  Icons.help_center_rounded,
                  color: Color(0xffFD7014),
                ),
                title: Text(
                  'Tentang Kami',
                  style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                    color: Color(0xffFD7014),
                  )),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(
                  Icons.dark_mode_rounded,
                  color: Color(0xff000000),
                ),
                title: Text(
                  'Dark Mode',
                  style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                    color: Color(0xff000000),
                  )),
                ),
                trailing: CupertinoSwitch(
                  value: true,
                  onChanged: (value) {},
                ),
              ),
            ],
          ),
        ),
      ),
      body: TabBarView(
        children: <Widget>[
          HomePage(),
          SalaryPage(),
          NewsPage(),
          ProfilePage(),
        ],
        controller: _tabController,
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Color(0xffFD7014), borderRadius: BorderRadius.circular(50)),
        child: TabBar(
          labelColor: Colors.white,
          unselectedLabelColor: Colors.grey,
          labelPadding: EdgeInsets.symmetric(horizontal: 0),
          indicator: UnderlineTabIndicator(
            borderSide: BorderSide(color: Colors.white, width: 0),
          ),
          tabs: <Widget>[
            Tab(text: 'Home', icon: Icon(Icons.home)),
            Tab(text: 'Penggajian', icon: Icon(Icons.transform_rounded)),
            Tab(text: 'Berita', icon: Icon(Icons.now_wallpaper_sharp)),
            Tab(text: 'Profile', icon: Icon(Icons.person)),
          ],
          controller: _tabController,
        ),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty<TabController?>('_tabController', _tabController));
  }
}
