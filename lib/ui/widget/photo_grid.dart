import 'package:flutter/material.dart';
import 'package:instagram_clone/all_export.dart';

class PhotoGrid extends StatelessWidget {
  ScrollController scrollController;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      child: GridView.builder(
        itemCount: myStories.length,
        controller: scrollController,
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 0.80,
          childAspectRatio: 0.75,
        ),
        itemBuilder: (context, index) => Container(
          height: 20,
          width: 30,
          child: Image.network(
            myStories[index].image,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
