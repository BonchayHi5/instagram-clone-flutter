import 'package:flutter/material.dart';
import 'package:instagram_clone/all_export.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProfileAppBar.getItem(),
      body: Container(
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: ListView(
          children: [
            ProfileHeader(),
            ProfileBody(),
          ],
        ),
      ),
    );
  }
}
