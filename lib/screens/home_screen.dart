import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:moviehome/style/theme.dart' as Style;
import 'package:moviehome/widgets/genres.dart';
import 'package:moviehome/widgets/now_playing.dart';
import 'package:moviehome/widgets/persons.dart';
import 'package:moviehome/widgets/top_movies.dart';

// Created By Mahmoud El Shenawy (Email : Mr.Mahmoud.El.Shenawy@Gmail.com)

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.Colors.mainColor,
      appBar: AppBar(
        backgroundColor: Style.Colors.mainColor,
        centerTitle: true,
        leading: Icon(EvaIcons.menu2Outline, color: Colors.white),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('M', style: TextStyle(color: Colors.red)),
            Text('ovie', style: TextStyle(color: Colors.white)),
            SizedBox(width: 5.0),
            Text('H', style: TextStyle(color: Colors.red)),
            Text('ome', style: TextStyle(color: Colors.white)),
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              EvaIcons.searchOutline,
              color: Colors.white,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          NowPlaying(),
          GenresScreen(),
          PersonsList(),
          TopMovies(),
        ],
      ),
    );
  }
}
