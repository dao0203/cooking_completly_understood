// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'candidate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Candidate _$$_CandidateFromJson(Map<String, dynamic> json) => _$_Candidate(
      output: Output.fromJson(json['output'] as Map<String, dynamic>),
      safetyRatings: (json['safetyRatings'] as List<dynamic>)
          .map((e) => SafetyRating.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CandidateToJson(_$_Candidate instance) =>
    <String, dynamic>{
      'output': instance.output,
      'safetyRatings': instance.safetyRatings,
    };
