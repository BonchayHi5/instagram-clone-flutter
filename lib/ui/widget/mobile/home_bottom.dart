import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../all_export.dart';

class HomeBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Icon(
                Icons.home,
                size: 30,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.search,
                size: 30,
              ),
              onPressed: null,
            ),
            IconButton(
              icon: Icon(
                FontAwesomeIcons.plusSquare,
                size: kDefaultIconSize,
              ),
              onPressed: null,
            ),
            IconButton(
              icon: Icon(
                FontAwesomeIcons.heart,
                size: kDefaultIconSize,
              ),
              onPressed: null,
            ),
            Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(igProfileUrl),
                ),
              ),
            ),
          ],
        ),
      );
  }
}