import 'package:flutter/material.dart';
import 'package:instagram_clone/all_export.dart';
import 'package:instagram_clone/ui/widget/mobile/photo_grid.dart';

class ProfileBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding + 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Story Highlights',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: kDefaultMediumFontSize,
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    'Keep your favorite stories on your profile',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: kDefaultMediumFontSize - 2,
                    ),
                  ),
                ],
              ),
              Icon(Icons.keyboard_arrow_up),
            ],
          ),
          Container(
            height: 100,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (context, index) {
                return index != 0
                    ? Container(
                        height: 60,
                        width: 60,
                        margin: EdgeInsets.symmetric(horizontal: 14.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey[500],
                        ),
                      )
                    : Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black),
                          color: Colors.white,
                        ),
                        child: Icon(Icons.add),
                      );
              },
            ),
          ),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                Column(
                  children: [
                    Icon(Icons.border_all_outlined),
                    SizedBox(height: 10.0),
                    Container(
                      height: 1,
                      width: MediaQuery.of(context).size.width / 2,
                      color: Colors.black,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.perm_contact_calendar_outlined),
                    Container(
                      height: 1,
                      width: MediaQuery.of(context).size.width / 3,
                      color: Colors.white,
                    ),
                  ],
                ),
              ],
            ),
          ),
          PhotoGrid(),
        ],
      ),
    );
  }
}
