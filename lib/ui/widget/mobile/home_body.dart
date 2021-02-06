import 'package:flutter/material.dart';
import 'package:instagram_clone/ui/widget/mobile/home_stories.dart';
import 'package:instagram_clone/ui/widget/mobile/ig_post.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
        itemCount: 50,
        itemBuilder: (context, index) {
          return Column(
            children: [
              index == 0 ? HomeStories() : Container(),
              IgPost(),
            ],
          );
        },
      ),
    );
  }
}
