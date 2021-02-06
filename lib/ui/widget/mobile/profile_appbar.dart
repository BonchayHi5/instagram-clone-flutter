import 'package:flutter/material.dart';

class ProfileAppBar {
  static getItem() {
    return AppBar(
      elevation: 0,
      title: Row(
        children: [
          Padding(
              padding: const EdgeInsets.only(top: 2),
              child: Icon(Icons.lock_outline, size: 20)),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Text(
              'bonchay_ouk',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 22,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Icon(Icons.keyboard_arrow_down),
          ),
        ],
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 24),
          child: Row(
            children: [
              Icon(
                Icons.add,
                size: 30,
              ),
              SizedBox(width: 12),
              Icon(
                Icons.menu,
                size: 30,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
