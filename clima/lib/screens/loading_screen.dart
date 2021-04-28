import 'package:clima/screens/location_screen.dart';
import 'package:clima/services/weather_on_location.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingScreen extends StatefulWidget {
  final String screenPath = '/';
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  void getLocationData() async {
    WeatherOnLocation weatherOnLocation = WeatherOnLocation();
    var _weatherData = await weatherOnLocation.getWeatherData();
    print('weather data $_weatherData');
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return LocationScreen(weatherData: _weatherData);
    }));
  }

  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitCubeGrid(
          color: Colors.white,
          size: 100.00,
        ),
      ),
    );
  }
}
