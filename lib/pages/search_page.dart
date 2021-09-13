import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:visible/utilites/constants.dart';

class SearchPage extends StatefulWidget {
  SearchPage({Key key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Row(children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 40, left: 20),
                child: Container(
                  height: 38,
                  width: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.grey[200]),
                  child: TextField(
                    obscureText: true,
                    cursorColor: Colors.grey,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                        hintText: 'Search',
                        hintStyle: GoogleFonts.notoSans(
                          fontSize: 16,
                          color: Colors.grey.shade400,
                        )),
                  ),
                ),
              )
            ]),
            SizedBox(
              height: 14,
            ),
            Wrap(
              runSpacing: 1,
              spacing: 1,
              children: List.generate(search_images.length, (index) {
                return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/reels');
                  },
                  child: Container(
                    height: (MediaQuery.of(context).size.width - 3) / 3,
                    width: (MediaQuery.of(context).size.width - 3) / 3,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(search_images[index]),
                          fit: BoxFit.cover),
                    ),
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
