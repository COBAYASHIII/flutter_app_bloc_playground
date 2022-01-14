import 'package:flutter/material.dart';
import 'package:flutter_app_bloc_playground/application/bloc/weather_bloc.dart';
import 'package:flutter_app_bloc_playground/application/cubit/weather_cubit.dart';
import 'package:flutter_app_bloc_playground/infrastructure/weather_repository.dart';
import 'package:flutter_app_bloc_playground/presentation/pages/weather_search_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: BlocProvider(
        create: (context) => WeatherBloc(FakeWeatherRepository()),
          child: WeatherSearchPage()
      ),
    );
  }
}
