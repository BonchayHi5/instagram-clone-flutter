import 'package:flutter/material.dart';
import 'package:instagram_clone/all_export.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar.getItem(),
      bottomNavigationBar: HomeBottom(),
      body: Container(
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: HomeBody(),
      ),
    );
  }
}
