import 'package:flutter_riverpod_example/model/contact.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'contact_edit_state.freezed.dart';

@Freezed(maybeWhen: false, maybeMap: false)
class ContactEditState with _$ContactEditState {
  factory ContactEditState({
    @Default(ContactEditStatus.initial) ContactEditStatus status,
    @Default('') String fullName,
    @Default('') String firstName,
    @Default('') String lastName,
    @Default('') String street,
    @Default('') String phone,
    Contact? contact,
  }) = _ContactEditState;
}

enum ContactEditStatus {
  initial,
  loading,
  error,
}
