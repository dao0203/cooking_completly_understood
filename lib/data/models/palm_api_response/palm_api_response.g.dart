// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'palm_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaLMApiResponse _$$_PaLMApiResponseFromJson(Map<String, dynamic> json) =>
    _$_PaLMApiResponse(
      candidates: (json['candidates'] as List<dynamic>)
          .map((e) => Candidate.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PaLMApiResponseToJson(_$_PaLMApiResponse instance) =>
    <String, dynamic>{
      'candidates': instance.candidates,
    };
