import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class Results with _$Results {
  factory Results({required List<User> results}) = _Results;

  factory Results.fromJson(Map<String, Object?> json) => _$ResultsFromJson(json);
}

@freezed
class User with _$User {
  factory User({
    required String gender,
    required Name name,
    required String email,
    required String phone,
    required Picture picture,
  }) = _User;
  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}

@freezed
class Name with _$Name {
  factory Name({required String title, required String first, required String last}) = _Name;

  factory Name.fromJson(Map<String, Object?> json) => _$NameFromJson(json);
}

@freezed
class Picture with _$Picture {
  factory Picture({required String large, required String medium, required String thumbnail}) = _Picture;

  factory Picture.fromJson(Map<String, Object?> json) => _$PictureFromJson(json);
}
