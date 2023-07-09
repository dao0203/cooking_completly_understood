// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_ai_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OpenAIApiResponse _$$_OpenAIApiResponseFromJson(Map<String, dynamic> json) =>
    _$_OpenAIApiResponse(
      id: json['id'] as String,
      object: json['object'] as String,
      created: json['created'] as int,
      choices: (json['choices'] as List<dynamic>)
          .map((e) => Choice.fromJson(e as Map<String, dynamic>))
          .toList(),
      usage: Usage.fromJson(json['usage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_OpenAIApiResponseToJson(
        _$_OpenAIApiResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'created': instance.created,
      'choices': instance.choices,
      'usage': instance.usage,
    };
