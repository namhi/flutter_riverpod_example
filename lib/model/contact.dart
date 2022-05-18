// main.dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'contact.freezed.dart';
part 'contact.g.dart';

@freezed
class Contact with _$Contact {
  const factory Contact({
    required int id,
    required String fullName,
    String? address,
    String? email,
    String? phone,
    String? firstName,
    String? lastName,
    @Default('') String status,
  }) = _Contact;
  factory Contact.fromJson(Map<String, dynamic> json) =>
      _$ContactFromJson(json);
}
