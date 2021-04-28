import 'dart:convert';

import 'package:clima/services/networking.dart';
import 'package:geolocator/geolocator.dart';
import 'package:clima/utilities/constants.dart';

class WeatherOnLocation {
  double latitude;
  double longitude;

  Future getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      // just giving a default location
      print('Exception while getting location.');
      latitude = 37.00;
      longitude = 32.00;
    }
  }

  Future getWeatherData() async {
    await getCurrentLocation();
    String url =
        'https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$kOpenWeatherAPIKey&units=metric';
    NetworkingHelper networkingHelper = NetworkingHelper(url: url);
    return await networkingHelper.getDataFromUrl();
  }

  Future getWeatherByCityName(String cityName) async {
    String url =
        'https://api.openweathermap.org/data/2.5/weather?q=$cityName&appid=$kOpenWeatherAPIKey&units=metric';
    NetworkingHelper networkingHelper = NetworkingHelper(url: url);
    return await networkingHelper.getDataFromUrl();
  }
}
