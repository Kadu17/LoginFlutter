import 'package:flutter/material.dart';

Map<int, Color> _swatchOpacity = {

  50 : const Color.fromRGBO(13, 90, 214, .1),
  100 : const Color.fromRGBO(13, 90, 214, .2),
  200 : const Color.fromRGBO(13, 90, 214, .3),
  300 : const Color.fromRGBO(13, 90, 214, .4),
  400 : const Color.fromRGBO(13, 90, 214, .5),
  500 : const Color.fromRGBO(13, 90, 214, .6),
  600 : const Color.fromRGBO(13, 90, 214, .7),
  700 : const Color.fromRGBO(13, 90, 214, .8),
  800 : const Color.fromRGBO(13, 90, 214, .9),
  900 : const Color.fromRGBO(13, 90, 214, .1),
  

};

abstract class CustomColors {
  static Color customContrastColor = Colors.blue.shade700;

  static MaterialColor customSwatchColor = MaterialColor(
    0xFF9A00DC, _swatchOpacity
    );
}