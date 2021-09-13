import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:visible/utilites/constants.dart';

class Reels extends StatefulWidget {
  Reels({Key key}) : super(key: key);

  @override
  _ReelsState createState() => _ReelsState();
}

class _ReelsState extends State<Reels> {
  bool openText = false;
  String changeText = 'more';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height * .9,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(search_images[0]),
                        fit: BoxFit.cover),
                  ),
                ),
                Positioned(
                  bottom: 30,
                  right: 16,
                  child: getLeftIcons(),
                ),
                Positioned(
                  bottom: 30,
                  left: 16,
                  child: getRightIcons(),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Stack(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height * .9,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(search_images[1]),
                        fit: BoxFit.cover),
                  ),
                ),
                Positioned(
                  bottom: 30,
                  right: 16,
                  child: getLeftIcons(),
                ),
                Positioned(
                  bottom: 30,
                  left: 16,
                  child: getRightIcons(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

// as the name suggets iocns that are on right of the page above video
  Widget getRightIcons() {
    return Column(
      children: <Widget>[
        Container(
          height: 30,
          width: 250,
          alignment: Alignment.centerLeft,
          child: Row(
            children: <Widget>[
              Container(
                height: 30,
                width: 38,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage(
                          search_images[5],
                        ),
                        fit: BoxFit.cover)),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  'dean_chimpaz . Follow',
                  style:
                      GoogleFonts.notoSans(fontSize: 14, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        InkWell(
          onTap: () {
            setState(() {
              if (openText == false) {
                openText = true;
                changeText = 'less';
              } else {
                openText = false;
                changeText = 'more';
              }
            });
          },
          child: Container(
            height: openText == true ? 150 : 20,
            width: 250,
            alignment: openText == true ? Alignment.topLeft : Alignment.center,
            child: Row(
              children: <Widget>[
                Text(
                  'shgjshvgsdhhddhgfgqfy $changeText',
                  // softWrap: openText == true ? false : true,
                  // overflow: openText == true ? null : TextOverflow.ellipsis,
                  style:
                      GoogleFonts.notoSans(fontSize: 14, color: Colors.white),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          height: 20,
          width: 270,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(children: <Widget>[
                Icon(
                  Icons.music_note,
                  color: Colors.white,
                  size: 18,
                ),
                SizedBox(
                  width: 2,
                ),
                Text(
                  'profile_name.Original Audio',
                  style: GoogleFonts.notoSans(
                    fontSize: 13,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ]),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.people_outline,
                    color: Colors.white,
                    size: 18,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    '3 People',
                    style: GoogleFonts.notoSans(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget getLeftIcons() {
    return Column(
      children: <Widget>[
        Column(
          children: <Widget>[
            Icon(
              Icons.favorite_outline,
              color: Colors.white,
              size: 31,
            ),
            Text(
              '768',
              style: GoogleFonts.notoSans(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
        SizedBox(
          height: 25,
        ),
        Column(
          children: <Widget>[
            Icon(
              Icons.messenger_outline,
              color: Colors.white,
              size: 29,
            ),
            Text(
              '76',
              style: GoogleFonts.notoSans(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
        SizedBox(
          height: 25,
        ),
        Icon(
          Icons.send,
          color: Colors.white,
          size: 29,
        ),
        SizedBox(
          height: 25,
        ),
        Icon(
          Icons.more_vert,
          color: Colors.white,
          size: 25,
        ),
      ],
    );
  }

  Widget getAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent.withOpacity(.1),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'Reels',
            style: GoogleFonts.notoSans(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          InkWell(
            child: Icon(
              Icons.camera_alt_outlined,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
