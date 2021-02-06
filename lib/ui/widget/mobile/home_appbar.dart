import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeAppBar {
  static getItem() {
    return AppBar(
      title: Image.asset(
        'asset/instagram_logo.png',
        width: 120,
        height: 120,
      ),
      elevation: 0,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10, top: 8),
          child: Stack(
            children: [
              Container(
                  margin: const EdgeInsets.only(right: 5.0),
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Icon(FontAwesomeIcons.comment, size: 24)),
              Positioned(
                top: 0,
                right: 0,
                child: Container(
                  height: 16,
                  width: 16,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red,
                  ),
                  child: Center(
                    child: Text(
                      '4',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
