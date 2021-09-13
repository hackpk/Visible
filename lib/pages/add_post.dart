import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:visible/widget/collapsing_list.dart';

class AddPost extends StatefulWidget {
  AddPost({Key key}) : super(key: key);

  @override
  _AddPostState createState() => _AddPostState();
}

class _AddPostState extends State<AddPost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: InkWell(
                      // onTap: () {
                      //   Navigator.pushNamed(context, '/');
                      //   setState(() {
                      //     back_to = true;
                      //   });
                      // },
                      child: Icon(
                        Icons.cut,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text('NEW POST',
                        style: GoogleFonts.notoSans(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(right: 15),
                child: InkWell(
                  child: Icon(
                    Icons.forward,
                    color: Colors.black,
                  ),
                ),
              )
            ],
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: CollapsingList(),
    );
  }
}
