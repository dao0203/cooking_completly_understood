import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile.freezed.dart';

@freezed
abstract class Profile with _$Profile {
  const factory Profile({
    required int id,
    required String userName,
    required String age,
    required String sex,
    @Default('') String bio,
  }) = _Profile;
}
