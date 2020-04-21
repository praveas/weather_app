import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget getWeatherIcon({String weatherDescription, Color color, double size}){

  switch(weatherDescription) {
    case "Clear":
      {
        return Icon(FontAwesomeIcons.solidSun, color: Colors.amberAccent, size: size,);
      } break;
    case "Clouds":
      {
        return Icon(FontAwesomeIcons.cloud, color: Colors.blue.shade900, size: size,);
      } break;
    case "Rain":
      {
        return Icon(FontAwesomeIcons.cloudRain, color: Colors.lightBlue.shade200, size: size,);
      } break;
    case "Snow":
      {
        return Icon(FontAwesomeIcons.snowman, color: Colors.white70, size: size,);
      } break;
    default: {
      return Icon(FontAwesomeIcons.skyatlas, color: Colors.amber.shade200, size: size,);
    }
  }
}