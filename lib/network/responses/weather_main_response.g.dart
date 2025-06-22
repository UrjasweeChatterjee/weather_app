// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_main_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherMainResponseImpl _$$WeatherMainResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$WeatherMainResponseImpl(
      temp: (json['temp'] as num).toDouble(),
      tempMin: (json['temp_min'] as num).toDouble(),
      tempMax: (json['temp_max'] as num).toDouble(),
    );

Map<String, dynamic> _$$WeatherMainResponseImplToJson(
        _$WeatherMainResponseImpl instance) =>
    <String, dynamic>{
      'temp': instance.temp,
      'temp_min': instance.tempMin,
      'temp_max': instance.tempMax,
    };
