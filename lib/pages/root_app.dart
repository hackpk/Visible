import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:visible/pages/activity_page.dart';
import 'package:visible/pages/add_post.dart';
import 'package:visible/pages/home_page.dart';
import 'package:visible/pages/profile_page.dart';
import 'package:visible/pages/search_page.dart';

class RootApp extends StatefulWidget {
  RootApp({Key key}) : super(key: key);

  @override
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int pageCount = 0;
  Color appColor = Colors.white70;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getTopBar(),
      body: getBody(),
      bottomNavigationBar: getBottomBar(),
    );
  }

  Widget getBody() {
    List<Widget> pages = [
      Center(
        child: HomePage(),
      ),
      Center(
        child: SearchPage(),
      ),
      Center(
        child: AddPost(),
      ),
      Center(
        child: ActivityPage(),
      ),
      Center(
        child: ProfilePage(),
      ),
    ];
    return IndexedStack(
      index: pageCount,
      children: pages,
    );
  }

  Widget getTopBar() {
    if (pageCount == 0) {
      return AppBar(
        backgroundColor: appColor,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(30),
              child: Text('Adventure',
                  style: GoogleFonts.bilbo(
                    color: Colors.black,
                    fontSize: 33.0,
                    fontWeight: FontWeight.w900,
                  )),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Icon(
                Icons.messenger_rounded,
                color: Colors.black,
              ),
            ),
          ],
        ),
      );
    } else if (pageCount == 1) {
      return null;
    } else if (pageCount == 2) {
      return null;
    } else if (pageCount == 3) {
      return AppBar(
        backgroundColor: appColor,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(30),
              child: Text('ACTIVITY',
                  style: GoogleFonts.bilbo(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 2,
                  )),
            ),
          ],
        ),
      );
    } else if (pageCount == 4) {
      return null;
    }
  }

  Widget getBottomBar() {
    List<Widget> bottomItems = [
      pageCount == 0 ? Icon(Icons.home_filled) : Icon(Icons.home_outlined),
      pageCount == 1
          ? Icon(Icons.search, size: 28)
          : Icon(Icons.search_outlined),
      pageCount == 2 ? Icon(Icons.add_box) : Icon(Icons.add_box_outlined),
      pageCount == 3 ? Icon(Icons.favorite) : Icon(Icons.favorite_outline),
      pageCount == 4 ? Icon(Icons.person) : Icon(Icons.person_outline),
    ];

    // if (pageCount == 2) {
    //   // setState(() {
    //   //   back_to = false;
    //   // });
    //   return null;
    // } else {
    return Container(
      height: 70,
      width: double.infinity,
      decoration: BoxDecoration(
        color: appColor,
      ),
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(bottomItems.length, (index) {
            return InkWell(
              onTap: () {
                selectedTab(index);
              },
              child: bottomItems[index],
            );
          }),
        ),
      ),
    );
    // }
  }

  selectedTab(index) {
    setState(() {
      pageCount = index;
    });
  }
}
