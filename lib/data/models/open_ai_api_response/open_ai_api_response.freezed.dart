// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'open_ai_api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OpenAIApiResponse _$OpenAIApiResponseFromJson(Map<String, dynamic> json) {
  return _OpenAIApiResponse.fromJson(json);
}

/// @nodoc
mixin _$OpenAIApiResponse {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'object')
  String get object => throw _privateConstructorUsedError;
  @JsonKey(name: 'created')
  int get created => throw _privateConstructorUsedError;
  @JsonKey(name: 'choices')
  List<Choice> get choices => throw _privateConstructorUsedError;
  @JsonKey(name: 'usage')
  Usage get usage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OpenAIApiResponseCopyWith<OpenAIApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenAIApiResponseCopyWith<$Res> {
  factory $OpenAIApiResponseCopyWith(
          OpenAIApiResponse value, $Res Function(OpenAIApiResponse) then) =
      _$OpenAIApiResponseCopyWithImpl<$Res, OpenAIApiResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'object') String object,
      @JsonKey(name: 'created') int created,
      @JsonKey(name: 'choices') List<Choice> choices,
      @JsonKey(name: 'usage') Usage usage});

  $UsageCopyWith<$Res> get usage;
}

/// @nodoc
class _$OpenAIApiResponseCopyWithImpl<$Res, $Val extends OpenAIApiResponse>
    implements $OpenAIApiResponseCopyWith<$Res> {
  _$OpenAIApiResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? object = null,
    Object? created = null,
    Object? choices = null,
    Object? usage = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      object: null == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as int,
      choices: null == choices
          ? _value.choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<Choice>,
      usage: null == usage
          ? _value.usage
          : usage // ignore: cast_nullable_to_non_nullable
              as Usage,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UsageCopyWith<$Res> get usage {
    return $UsageCopyWith<$Res>(_value.usage, (value) {
      return _then(_value.copyWith(usage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_OpenAIApiResponseCopyWith<$Res>
    implements $OpenAIApiResponseCopyWith<$Res> {
  factory _$$_OpenAIApiResponseCopyWith(_$_OpenAIApiResponse value,
          $Res Function(_$_OpenAIApiResponse) then) =
      __$$_OpenAIApiResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'object') String object,
      @JsonKey(name: 'created') int created,
      @JsonKey(name: 'choices') List<Choice> choices,
      @JsonKey(name: 'usage') Usage usage});

  @override
  $UsageCopyWith<$Res> get usage;
}

/// @nodoc
class __$$_OpenAIApiResponseCopyWithImpl<$Res>
    extends _$OpenAIApiResponseCopyWithImpl<$Res, _$_OpenAIApiResponse>
    implements _$$_OpenAIApiResponseCopyWith<$Res> {
  __$$_OpenAIApiResponseCopyWithImpl(
      _$_OpenAIApiResponse _value, $Res Function(_$_OpenAIApiResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? object = null,
    Object? created = null,
    Object? choices = null,
    Object? usage = null,
  }) {
    return _then(_$_OpenAIApiResponse(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      object: null == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as int,
      choices: null == choices
          ? _value._choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<Choice>,
      usage: null == usage
          ? _value.usage
          : usage // ignore: cast_nullable_to_non_nullable
              as Usage,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OpenAIApiResponse implements _OpenAIApiResponse {
  const _$_OpenAIApiResponse(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'object') required this.object,
      @JsonKey(name: 'created') required this.created,
      @JsonKey(name: 'choices') required final List<Choice> choices,
      @JsonKey(name: 'usage') required this.usage})
      : _choices = choices;

  factory _$_OpenAIApiResponse.fromJson(Map<String, dynamic> json) =>
      _$$_OpenAIApiResponseFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'object')
  final String object;
  @override
  @JsonKey(name: 'created')
  final int created;
  final List<Choice> _choices;
  @override
  @JsonKey(name: 'choices')
  List<Choice> get choices {
    if (_choices is EqualUnmodifiableListView) return _choices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_choices);
  }

  @override
  @JsonKey(name: 'usage')
  final Usage usage;

  @override
  String toString() {
    return 'OpenAIApiResponse(id: $id, object: $object, created: $created, choices: $choices, usage: $usage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OpenAIApiResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.object, object) || other.object == object) &&
            (identical(other.created, created) || other.created == created) &&
            const DeepCollectionEquality().equals(other._choices, _choices) &&
            (identical(other.usage, usage) || other.usage == usage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, object, created,
      const DeepCollectionEquality().hash(_choices), usage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OpenAIApiResponseCopyWith<_$_OpenAIApiResponse> get copyWith =>
      __$$_OpenAIApiResponseCopyWithImpl<_$_OpenAIApiResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OpenAIApiResponseToJson(
      this,
    );
  }
}

abstract class _OpenAIApiResponse implements OpenAIApiResponse {
  const factory _OpenAIApiResponse(
          {@JsonKey(name: 'id') required final String id,
          @JsonKey(name: 'object') required final String object,
          @JsonKey(name: 'created') required final int created,
          @JsonKey(name: 'choices') required final List<Choice> choices,
          @JsonKey(name: 'usage') required final Usage usage}) =
      _$_OpenAIApiResponse;

  factory _OpenAIApiResponse.fromJson(Map<String, dynamic> json) =
      _$_OpenAIApiResponse.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'object')
  String get object;
  @override
  @JsonKey(name: 'created')
  int get created;
  @override
  @JsonKey(name: 'choices')
  List<Choice> get choices;
  @override
  @JsonKey(name: 'usage')
  Usage get usage;
  @override
  @JsonKey(ignore: true)
  _$$_OpenAIApiResponseCopyWith<_$_OpenAIApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
