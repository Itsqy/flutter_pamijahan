import 'package:flutter/material.dart';
import 'package:flutter_application_12/pages/news/list_item_news.dart';
import 'package:flutter_application_12/theme/theme.dart';

class DetailNews extends StatelessWidget {
  final ListItemNews itemNews;
  DetailNews({required this.itemNews});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Detail News"),
      //   backgroundColor: Navy,
      // ),
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Image.asset(
                  itemNews.imgPath!,
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
                SizedBox(height: 15),
                Text(itemNews.title!),
                SizedBox(
                  height: 25,
                ),
                Text(itemNews.author!),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 15),
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios_new,
                    color: kOrangeColor,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
