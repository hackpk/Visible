import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:visible/utilites/constants.dart';
import 'package:visible/widget/post_container.dart';
import 'package:visible/widget/story_item.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 68,
                          width: 68,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: NetworkImage(profile),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                bottom: 4,
                                right: 5,
                                child: Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.lightBlueAccent,
                                  ),
                                  child: Center(
                                    child: Icon(
                                      Icons.add,
                                      size: 15,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: 70,
                          child: Center(
                            child: Text(
                              'Your Story',
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.notoSans(
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: List.generate(stories.length, (index) {
                      return InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/instaStories');
                          },
                          child: InstaStoryItem(
                            img: stories[index]["img"],
                            name: stories[index]["name"],
                          ));
                    }),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Divider(),
            Column(
              children: List.generate(posts.length, (index) {
                return PostsContainer(
                  name: posts[index]["name"],
                  profileImg: posts[index]["profileImg"],
                  postImg: posts[index]["postImg"],
                  isLoved: posts[index]["isLoved"],
                  commentCount: posts[index]["commentCount"],
                  caption: posts[index]["caption"],
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
