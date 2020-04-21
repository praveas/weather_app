import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:weatherapp/weather_forecast/model/weather_forecast_model.dart';
import 'package:weatherapp/weather_forecast/util/convert_icon.dart';
import 'package:weatherapp/weather_forecast/util/forecast_util.dart';

Widget forecastCard(AsyncSnapshot<WeatherForecastModel> snapshot, int index){
  var forecastList = snapshot.data.list;
  DateTime date = new DateTime.fromMillisecondsSinceEpoch(forecastList[index].dt * 1000);
  var dayOfWeek = "";
  var fullDate = Util.getFormattedDate(date);

  dayOfWeek = fullDate.split(",")[0];  //[Tuesday,Apr 21,2020]
  //splitting and getting the 1st element of the list

  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
        Center(child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("${dayOfWeek}"),
        )),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          CircleAvatar(
            radius: 33,
              backgroundColor: Colors.white,
              child: getWeatherIcon(weatherDescription: forecastList[index].weather[0].main,size: 45),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text("${forecastList[index].temp.min.toStringAsFixed(0)}°F", style: TextStyle(
                        fontSize: 12.9,
                      ),),
                    ),
                    //CircleAvatar(radius: 10,
                    //backgroundColor: Colors.white,child: Icon(FontAwesomeIcons.arrowDown,size: 10, color: Colors.black45,),)
                    Icon(FontAwesomeIcons.solidArrowAltCircleDown, size: 17, color: Colors.white,)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text("${forecastList[index].temp.max.toStringAsFixed(0)}°F", style: TextStyle(
                        fontSize: 12.9,
                      ),),
                    ),
                      Icon(FontAwesomeIcons.solidArrowAltCircleUp, size: 17, color: Colors.white,)
                    //CircleAvatar(radius: 10, backgroundColor: Colors.white,
                      //child: Icon(FontAwesomeIcons.arrowUp,size: 10, color: Colors.black45,),)
                  ],
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text("Hum:${forecastList[index].humidity}%", style: TextStyle(
                        fontSize: 12.9,
                      ),),

                    ),
                    Icon(FontAwesomeIcons.solidGrinBeamSweat, size: 17, color: Colors.white,)
                    ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text("Win:${forecastList[index].speed.toStringAsFixed(1)}mi/h", style: TextStyle(
                        fontSize: 12.9,
                      ),),
                    ),
                    Icon(FontAwesomeIcons.wind, size: 17, color: Colors.white,)

                  ],
                )
              ],
            ),
          )
        ],
      )
    ],
  );
}