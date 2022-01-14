import 'package:bloc/bloc.dart';
import 'package:flutter_app_bloc_playground/domain/weather.dart';
import 'package:flutter_app_bloc_playground/infrastructure/weather_repository.dart';
import 'package:meta/meta.dart';

part 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  final WeatherRepository _weatherRepository;
  WeatherCubit(this._weatherRepository) : super(WeatherInitial());

  Future<void> getWeather(String cityName) async {
    try{
      emit(WeatherLoading());
      final weather = await _weatherRepository.fetchWeather(cityName);
      emit(WeatherLoaded(weather));
    } on NetworkException {
      emit(WeatherError("could not fetch weather. Is the device online?"));
    }
  }
}
