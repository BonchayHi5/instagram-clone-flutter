import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_clone/all_export.dart';

class HomeAppBarWeb extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;

  HomeAppBarWeb({
    Key key,
  })  : preferredSize = Size.fromHeight(50.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(width: 1.0, color: Colors.grey[200]),
          ),
        ),
        child: WebLayout(
          widget: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'asset/instagram_logo.png',
                width: 100,
                height: 100,
              ),
              Container(
                height: 25,
                width: 180,
                child: TextFormField(
                  // textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(top: 10.0),
                    hintText: 'Search',
                    hintStyle: TextStyle(fontSize: 14),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey[300]),
                      //borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey[300]),
                      // borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      size: 20.0,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.home,
                      size: 28,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.search,
                      size: 28,
                    ),
                    onPressed: null,
                  ),
                  IconButton(
                    icon: Icon(
                      FontAwesomeIcons.plusSquare,
                      size: kDefaultIconSize - 4,
                    ),
                    onPressed: null,
                  ),
                  IconButton(
                    icon: Icon(
                      FontAwesomeIcons.heart,
                      size: kDefaultIconSize - 4,
                    ),
                    onPressed: null,
                  ),
                  Container(
                    height: 28,
                    width: 28,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(igProfileUrl),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
