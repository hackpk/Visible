import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PostsContainer extends StatelessWidget {
  final String name;
  final String profileImg;
  final String postImg;
  final bool isLoved;
  final String commentCount;
  final String caption;

  const PostsContainer({
    Key key,
    this.name,
    this.profileImg,
    this.postImg,
    this.isLoved,
    this.commentCount,
    this.caption,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10, bottom: 10),
      child: Container(
        height: 650,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        height: 42,
                        width: 42,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: NetworkImage(profileImg),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        name,
                        style: GoogleFonts.notoSans(
                          fontSize: 13,
                          fontWeight: FontWeight.w800,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  InkWell(
                    child: Icon(Icons.more_vert),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 6),
              child: Container(
                height: 400,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(postImg),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 10,
                bottom: 10,
                left: 13,
                right: 13,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      InkWell(
                        child: isLoved == true
                            ? Icon(
                                Icons.favorite,
                                size: 26,
                                color: Colors.red,
                              )
                            : Icon(
                                Icons.favorite_outline,
                                size: 26,
                              ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        child: Icon(
                          Icons.comment_outlined,
                          size: 26,
                        ),
                      ),
                      SizedBox(
                        width: 11,
                      ),
                      InkWell(
                        child: Icon(
                          Icons.send_outlined,
                          size: 26,
                        ),
                      ),
                    ],
                  ),
                  InkWell(
                    child: Icon(
                      Icons.save_alt_outlined,
                      size: 28,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 13,
                right: 13,
              ),
              child: Row(
                children: <Widget>[
                  Text(
                    "2536",
                    style: GoogleFonts.notoSans(
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'likes',
                    style: GoogleFonts.notoSans(
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 13,
                right: 13,
              ),
              child: Row(
                children: <Widget>[
                  Text(
                    name,
                    style: GoogleFonts.notoSans(
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    caption,
                    style: GoogleFonts.notoSans(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Padding(
              padding: EdgeInsets.only(
                bottom: 20,
                left: 13,
                right: 13,
              ),
              child: Row(
                children: <Widget>[
                  Text("View all $commentCount",
                      style: GoogleFonts.notoSans(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                      )),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "comments",
                    style: GoogleFonts.notoSans(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 13,
                right: 13,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        height: 32,
                        width: 32,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: NetworkImage(
                              profileImg,
                            ),
                          ),
                        ),
                      ),
                      // TextField(
                      //   decoration: InputDecoration(hintText: "Add a comment"),
                      // ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      InkWell(
                        child:
                            Icon(Icons.favorite, color: Colors.red, size: 15),
                      ),
                      Text(
                        "😍",
                        style: GoogleFonts.notoSans(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
