// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_weather_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherWeatherResponseImpl _$$WeatherWeatherResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$WeatherWeatherResponseImpl(
      main: json['main'] as String,
      description: json['description'] as String,
      icon: json['icon'] as String,
    );

Map<String, dynamic> _$$WeatherWeatherResponseImplToJson(
        _$WeatherWeatherResponseImpl instance) =>
    <String, dynamic>{
      'main': instance.main,
      'description': instance.description,
      'icon': instance.icon,
    };
