import 'dart:convert';
import 'dart:developer';

import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import "package:http/http.dart" as http;

import '../../common/constants/api_key.dart';
import '../../respose_model/weather_model.dart';

class WeatherApiCall {
  Future<WeatherModel> callWeatherAPi(bool current, String cityName) async {
    try {
      Position currentPosition = await getCurrentPosition();

      if (current) {
        List<Placemark> placemarks = await placemarkFromCoordinates(
            currentPosition.latitude, currentPosition.longitude);

        Placemark place = placemarks[0];
        cityName = place.locality!;
      }

      var url = Uri.https('api.openweathermap.org', 'data/2.5/forecast',
          {'q': cityName, "units": "metric", 'id': '524901', "appid": apiKey});
      print(url);
      final http.Response response = await http.get(url);
      if (response.statusCode == 200) {
        final Map<String, dynamic> decodedJson = json.decode(response.body);
        print("======>$decodedJson");
        return WeatherModel.fromJson(decodedJson);
      } else {
        throw Exception('Failed to load weather data');
      }
    } catch (e) {
      throw Exception('Failed to load weather data');
    }
  }

  Future<Position> getCurrentPosition() async {
    bool serviceEnabled;
    LocationPermission permission;
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    return await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.best,
    );
  }
}
