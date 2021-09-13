import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InstaStoryItem extends StatelessWidget {
  final String img;
  final String name;
  const InstaStoryItem({
    Key key,
    this.img,
    this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10, top: 10),
      child: Column(
        children: <Widget>[
          Container(
            height: 71,
            width: 71,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.pinkAccent, Colors.deepOrangeAccent],
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(3),
              child: Container(
                height: 65,
                width: 65,
                decoration: BoxDecoration(
                  // color: Colors.blueAccent,
                  border: Border.all(width: 2, color: Colors.white),
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage(img),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            width: 70,
            child: Center(
              child: Text(
                name,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.notoSans(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
