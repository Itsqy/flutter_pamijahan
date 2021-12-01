import 'package:flutter/material.dart';
import 'package:flutter_application_12/pages/news/list_item_widget.dart';

import 'package:flutter_application_12/theme/theme.dart';

import 'detail_news.dart';
import 'list_item_news.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  List<ListItemNews> _listItem = [
    ListItemNews(
        imgPath: 'images/img_home.png',
        title: 'Judul Berita',
        author: 'Fulan',
        date: '2021-10-10'),
    ListItemNews(
        imgPath: 'images/img_news.jpeg',
        title: 'Judul Berita 2',
        author: 'Fulan',
        date: '2021-10-10'),
    ListItemNews(
        imgPath: 'images/img_home.png',
        title: 'Judul Berita 2',
        author: 'Fulan',
        date: '2021-10-10'),
    ListItemNews(
        imgPath: 'images/img_news.jpeg',
        title: 'Judul Berita 2',
        author: 'Fulan',
        date: '2021-10-10'),
    ListItemNews(
        imgPath: 'images/img_home.png',
        title: 'Judul Berita 2',
        author: 'Fulan',
        date: '2021-10-10'),
    ListItemNews(
        imgPath: 'images/img_news.jpeg',
        title: 'Judul Berita 2',
        author: 'Fulan',
        date: '2021-10-10'),
    ListItemNews(
        imgPath: 'images/img_home.png',
        title: 'Judul Berita 2',
        author: 'Fulan',
        date: '2021-10-10'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: _listItem.length,
          itemBuilder: (context, index) {
            var berita = _listItem[index];
            return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailNews(itemNews: berita)));
                },
                child: listItem(_listItem[index]));
          }),
    );
  }
}
