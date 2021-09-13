import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';
import 'package:story_view/widgets/story_view.dart';

class InstaStoryPage extends StatefulWidget {
  InstaStoryPage({Key key}) : super(key: key);

  @override
  _InstaStoryPageState createState() => _InstaStoryPageState();
}

class _InstaStoryPageState extends State<InstaStoryPage> {
  final _storyController = StoryController();
  List<StoryItem> storyItems = [
    StoryItem.text(
        title: 'hey there',
        backgroundColor: Color.alphaBlend(Colors.yellow, Colors.black)),
    StoryItem.text(
        title: 'hey tdbjdvhgdlhere',
        backgroundColor: Color.alphaBlend(Colors.yellow, Colors.black)),
  ];

  @override
  Widget build(BuildContext context) {
    return StoryView(
      storyItems: storyItems,
      controller: _storyController,
      onComplete: () {
        Navigator.pop(context);
      },
    );
  }
}
