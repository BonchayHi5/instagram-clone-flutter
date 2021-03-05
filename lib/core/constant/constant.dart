import 'package:flutter/material.dart';

const double kDefaultFontSize = 12.0;
const double kDefaultMediumFontSize = 16.0;
const double kDefaultBigFontSize = 22.0;
const gradientBorderDecoration = BoxDecoration(
    shape: BoxShape.circle,
    gradient: SweepGradient(
      colors: [
        Color(0xFF833AB4), // Purple
        Color(0xFFF77737), // Orange
        Color(0xFFE1306C), // Red-pink
        Color(0xFFC13584), // Red-purple
      ],
    ),
  );

const double kDefaultPadding = 12.0;

const double kDefaultIconSize = 25.0;

const String igProfileUrl =
    'https://images.pexels.com/photos/1040881/pexels-photo-1040881.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260';
