import 'package:flutter/material.dart';
import 'package:instagram_clone/all_export.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IgPost extends StatefulWidget {
  @override
  _IgPostState createState() => _IgPostState();
}

class _IgPostState extends State<IgPost> {
  bool _like = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 60,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[300], width: 0.5),
            ),
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 12.0, right: 10.0),
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(myStories[1].image),
                    ),
                  ),
                ),
                Text(
                  myStories[1].name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                        margin: EdgeInsets.only(right: 12.0),
                        child: Icon(Icons.more_vert)),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onDoubleTap: () {
              setState(() {
                _like = true;
              });
            },
            child: Container(
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width,
              child: Image.network(
                myStories[1].image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: 50.0,
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _like
                    ? Icon(Icons.favorite, color: Colors.red, size: 30)
                    : Icon(FontAwesomeIcons.heart, size: kDefaultIconSize),
                SizedBox(width: 12.0),
                Icon(FontAwesomeIcons.comment, size: kDefaultIconSize),
                SizedBox(width: 12.0),
                Icon(FontAwesomeIcons.paperPlane, size: kDefaultIconSize),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Icon(
                      FontAwesomeIcons.bookmark,
                      size: kDefaultIconSize,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '20 likes',
                  style: TextStyle(
                    fontSize: kDefaultFontSize,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5.0),
                Row(
                  children: [
                    Text(
                      myStories[1].name,
                      style: TextStyle(
                        fontSize: kDefaultFontSize,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 5.0),
                    Text('Hello World'),
                  ],
                ),
                SizedBox(height: 5.0),
                Text(
                  'View 1 Comment',
                  style: TextStyle(
                      fontSize: kDefaultFontSize,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[500]),
                ),
                Container(
                  height: 50.0,
                  child: Row(
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(myStories[1].image),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Add a comment...',
                        style: TextStyle(color: Colors.grey[500]),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
