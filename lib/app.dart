import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather/repositories/repositories.dart';
import 'package:flutter_weather/widgets/widgets.dart';

import 'blocs/blocs.dart';

class App extends StatelessWidget {
  final WeatherRepository weatherRepository;

  App({Key key, @required this.weatherRepository})
    : assert(weatherRepository != null),
      super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Weather',
      home: BlocProvider(
        create: (context) =>
          WeatherBloc(weatherRepository: weatherRepository),
        child: Weather(),
      ),
    );
  }
}