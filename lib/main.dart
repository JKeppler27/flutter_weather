import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather/app.dart';
import 'package:flutter_weather/repositories/repositories.dart';
import 'package:flutter_weather/simple_bloc_observer.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/widgets.dart';

void main() {
  Bloc.observer = SimpleBlocObserver();

  final WeatherRepository weatherRepository = WeatherRepository(
    weatherApiClient: WeatherApiClient(
      httpClient: http.Client(),
    ),
  );

  runApp(App(weatherRepository: weatherRepository));
}