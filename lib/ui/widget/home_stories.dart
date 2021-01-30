import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_clone/all_export.dart';

class HomeStories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.12,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: myStories.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    margin: EdgeInsets.symmetric(horizontal: 14.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.grey, width: 1),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(myStories[index].image),
                      ),
                    ),
                  ),
                  index == 0
                      ? Positioned(
                          top: 40,
                          right: 10,
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: Icon(
                              FontAwesomeIcons.plusCircle,
                              color: Colors.blue,
                              size: 20,
                            ),
                          ),
                        )
                      : Container(),
                ],
              ),
              SizedBox(height: 5),
              Text(
                myStories[index].name,
                style: TextStyle(
                  fontSize: kDefaultFontSize,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
