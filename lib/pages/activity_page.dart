import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:visible/utilites/constants.dart';

class ActivityPage extends StatefulWidget {
  ActivityPage({Key key}) : super(key: key);

  @override
  _ActivityPageState createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                'This Month',
                style: GoogleFonts.notoSans(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            getThisMonth(),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                'Earlier',
                style: GoogleFonts.notoSans(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            getEarlier(),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                'Suggestions For You',
                style: GoogleFonts.notoSans(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            getSuggestions(),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                'See All Suggestions',
                style: GoogleFonts.notoSans(
                  fontSize: 18,
                  color: Colors.blue,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getSuggestions() {
    return Column(
      children: List.generate(search_images.length, (index) {
        return Padding(
          padding: EdgeInsets.only(top: 10, left: 10, right: 10),
          child: Row(
            children: <Widget>[
              Container(
                height: 71,
                width: 71,
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
                        image: NetworkImage(search_images[index]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 80,
                width: 170,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'schoolMania',
                      style: GoogleFonts.notoSans(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'school Mania',
                      style: GoogleFonts.notoSans(
                        fontSize: 18,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      'Suggested for you',
                      style: GoogleFonts.notoSans(
                        fontSize: 14.5,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: () {},
                child: Center(
                  child: Text(
                    'Follow',
                    style: GoogleFonts.notoSans(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: InkWell(
                  child: Icon(Icons.cut),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }

  Widget getEarlier() {
    return Column(
      children: List.generate(search_images.length, (index) {
        return Padding(
          padding: EdgeInsets.only(top: 10, left: 10, right: 10),
          child: Row(
            children: <Widget>[
              Container(
                height: 71,
                width: 71,
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
                        image: NetworkImage(search_images[index]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 40,
                width: 220,
                child: Text(
                  'Lauren posted for the first time',
                  style: GoogleFonts.notoSans(
                    fontSize: 16,
                  ),
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: () {},
                child: Center(
                  child: Text(
                    'Follow',
                    style: GoogleFonts.notoSans(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      }),
    );
  }

  Widget getThisMonth() {
    return Column(
      children: List.generate(search_images.length, (index) {
        return Padding(
          padding: EdgeInsets.only(top: 10, left: 10, right: 10),
          child: Row(
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
                        image: NetworkImage(search_images[index]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 40,
                width: 230,
                child: Text(
                  'findingflethet is posted on IGTV video.',
                  style: GoogleFonts.notoSans(
                    fontSize: 16,
                  ),
                ),
              ),
              Container(
                height: 49,
                width: 60,
                decoration: BoxDecoration(
                    image:
                        DecorationImage(image: NetworkImage(search_images[7]))),
              )
            ],
          ),
        );
      }),
    );
  }
}
