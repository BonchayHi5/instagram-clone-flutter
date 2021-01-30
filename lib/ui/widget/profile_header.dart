import 'package:flutter/material.dart';
import 'package:instagram_clone/all_export.dart';

var mTextStyle = TextStyle(
  fontWeight: FontWeight.w500,
  fontSize: kDefaultMediumFontSize,
);

class ProfileHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(bottom: kDefaultPadding + 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.grey[500], width: 0.5),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(igProfileUrl),
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('58', style: mTextStyle),
                    Text('Posts', style: mTextStyle),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('956', style: mTextStyle),
                    Text('Followers', style: mTextStyle),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '839',
                      style: mTextStyle,
                    ),
                    Text('Following', style: mTextStyle),
                  ],
                ),
              ],
            ),
          ),
          Text(
            'Bonchay Ouk',
            style: mTextStyle,
          ),
          Text(
            'Push to the limit',
            style: mTextStyle,
          ),
          Container(
            padding: const EdgeInsets.only(top: kDefaultPadding + 6),
            width: MediaQuery.of(context).size.width,
            child: OutlineButton(
                onPressed: () {},
                child: Text('Edit Profile', style: mTextStyle)),
          )
        ],
      ),
    );
  }
}
