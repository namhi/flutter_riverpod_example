import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../model/contact.dart';

part 'contacts_state.freezed.dart';

@freezed
@Freezed(maybeWhen: false, maybeMap: false)
class ContactsState with _$ContactsState {
  factory ContactsState({
    @Default([]) List<Contact> contacts,
    @Default(ContactsStatus.initial) ContactsStatus loadingStatus,
    String? lastError,
    @Default(false) isBusy,
    @Default([]) List<int> busyItem,
  }) = _ContactsState;
}

enum ContactsStatus {
  initial,
  loading,
  loaded,
  error,
}
