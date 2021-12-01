import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_12/pages/news/list_item_news.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter_application_12/theme/theme.dart';

Widget listItem(ListItemNews listItemNews) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    child: SingleChildScrollView(
      child: Card(
        elevation: 19,
        margin: EdgeInsets.only(top: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
          side: BorderSide(color: kOrangeColor, width: 1),
        ),
        shadowColor: kOrangeColor,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: <Widget>[
              Container(
                width: 100,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: AssetImage(listItemNews.imgPath!),
                        fit: BoxFit.cover)),
              ),
              SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    listItemNews.title!,
                    style: GoogleFonts.montserrat(fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(Icons.person),
                          Text(listItemNews.author!),
                          SizedBox(width: 60),
                          Icon(Icons.date_range),
                          Text(listItemNews.date!)
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
