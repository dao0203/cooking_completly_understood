// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'choice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Choice _$$_ChoiceFromJson(Map<String, dynamic> json) => _$_Choice(
      index: json['index'] as int,
      message: Message.fromJson(json['message'] as Map<String, dynamic>),
      finishReason: json['finish_reason'] as String,
    );

Map<String, dynamic> _$$_ChoiceToJson(_$_Choice instance) => <String, dynamic>{
      'index': instance.index,
      'message': instance.message,
      'finish_reason': instance.finishReason,
    };
