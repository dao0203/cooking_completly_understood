// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_meteo_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OpenMeteoApiResponse _$$_OpenMeteoApiResponseFromJson(
        Map<String, dynamic> json) =>
    _$_OpenMeteoApiResponse(
      currentWeather: CurrentWeather.fromJson(
          json['current_weather'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_OpenMeteoApiResponseToJson(
        _$_OpenMeteoApiResponse instance) =>
    <String, dynamic>{
      'current_weather': instance.currentWeather,
    };
