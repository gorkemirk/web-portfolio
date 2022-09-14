import 'package:flutter/material.dart';

var buttonborderhome = Border(
    bottom: BorderSide(width: 1.5, color: renkler.appbarbuttontextcolorHome));
var buttonborderwork = Border(
    bottom: BorderSide(width: 1.5, color: renkler.appbarbuttontextcolorWork));
var buttonborderaboutme = Border(
    bottom:
        BorderSide(width: 1.5, color: renkler.appbarbuttontextcolorAboutMe));
var nonebuttonborder = Border();

class renkler {
  static Color appbarbuttontextcolorHome = Color.fromRGBO(173, 174, 175, 1);
  static Color appbarbuttontextcolorWork = Color.fromRGBO(173, 174, 175, 1);
  static Color appbarbuttontextcolorAboutMe = Color.fromRGBO(173, 174, 175, 1);
}
