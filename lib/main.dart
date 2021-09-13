import 'package:flutter/material.dart';
import 'package:visible/pages/add_post.dart';
import 'package:visible/pages/home_page.dart';
import 'package:visible/pages/reels_page.dart';
import 'package:visible/pages/root_app.dart';
import 'package:visible/pages/story_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Visible',
      debugShowCheckedModeBanner: false,
      home: RootApp(),
      routes: <String, WidgetBuilder>{
        '/add_post': (BuildContext context) => AddPost(),
        '/home': (BuildContext context) => HomePage(),
        '/root': (BuildContext context) => RootApp(),
        '/reels': (BuildContext context) => Reels(),
        '/instaStories': (BuildContext context) => InstaStoryPage(),
      },
    );
  }
}
