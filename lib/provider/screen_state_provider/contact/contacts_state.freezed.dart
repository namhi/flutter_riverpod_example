// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'contacts_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ContactsStateTearOff {
  const _$ContactsStateTearOff();

  _ContactsState call(
      {List<Contact> contacts = const [],
      ContactsStatus loadingStatus = ContactsStatus.initial,
      String? lastError,
      dynamic isBusy = false,
      List<int> busyItem = const []}) {
    return _ContactsState(
      contacts: contacts,
      loadingStatus: loadingStatus,
      lastError: lastError,
      isBusy: isBusy,
      busyItem: busyItem,
    );
  }
}

/// @nodoc
const $ContactsState = _$ContactsStateTearOff();

/// @nodoc
mixin _$ContactsState {
  List<Contact> get contacts => throw _privateConstructorUsedError;
  ContactsStatus get loadingStatus => throw _privateConstructorUsedError;
  String? get lastError => throw _privateConstructorUsedError;
  dynamic get isBusy => throw _privateConstructorUsedError;
  List<int> get busyItem => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContactsStateCopyWith<ContactsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactsStateCopyWith<$Res> {
  factory $ContactsStateCopyWith(
          ContactsState value, $Res Function(ContactsState) then) =
      _$ContactsStateCopyWithImpl<$Res>;
  $Res call(
      {List<Contact> contacts,
      ContactsStatus loadingStatus,
      String? lastError,
      dynamic isBusy,
      List<int> busyItem});
}

/// @nodoc
class _$ContactsStateCopyWithImpl<$Res>
    implements $ContactsStateCopyWith<$Res> {
  _$ContactsStateCopyWithImpl(this._value, this._then);

  final ContactsState _value;
  // ignore: unused_field
  final $Res Function(ContactsState) _then;

  @override
  $Res call({
    Object? contacts = freezed,
    Object? loadingStatus = freezed,
    Object? lastError = freezed,
    Object? isBusy = freezed,
    Object? busyItem = freezed,
  }) {
    return _then(_value.copyWith(
      contacts: contacts == freezed
          ? _value.contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<Contact>,
      loadingStatus: loadingStatus == freezed
          ? _value.loadingStatus
          : loadingStatus // ignore: cast_nullable_to_non_nullable
              as ContactsStatus,
      lastError: lastError == freezed
          ? _value.lastError
          : lastError // ignore: cast_nullable_to_non_nullable
              as String?,
      isBusy: isBusy == freezed
          ? _value.isBusy
          : isBusy // ignore: cast_nullable_to_non_nullable
              as dynamic,
      busyItem: busyItem == freezed
          ? _value.busyItem
          : busyItem // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
abstract class _$ContactsStateCopyWith<$Res>
    implements $ContactsStateCopyWith<$Res> {
  factory _$ContactsStateCopyWith(
          _ContactsState value, $Res Function(_ContactsState) then) =
      __$ContactsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Contact> contacts,
      ContactsStatus loadingStatus,
      String? lastError,
      dynamic isBusy,
      List<int> busyItem});
}

/// @nodoc
class __$ContactsStateCopyWithImpl<$Res>
    extends _$ContactsStateCopyWithImpl<$Res>
    implements _$ContactsStateCopyWith<$Res> {
  __$ContactsStateCopyWithImpl(
      _ContactsState _value, $Res Function(_ContactsState) _then)
      : super(_value, (v) => _then(v as _ContactsState));

  @override
  _ContactsState get _value => super._value as _ContactsState;

  @override
  $Res call({
    Object? contacts = freezed,
    Object? loadingStatus = freezed,
    Object? lastError = freezed,
    Object? isBusy = freezed,
    Object? busyItem = freezed,
  }) {
    return _then(_ContactsState(
      contacts: contacts == freezed
          ? _value.contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<Contact>,
      loadingStatus: loadingStatus == freezed
          ? _value.loadingStatus
          : loadingStatus // ignore: cast_nullable_to_non_nullable
              as ContactsStatus,
      lastError: lastError == freezed
          ? _value.lastError
          : lastError // ignore: cast_nullable_to_non_nullable
              as String?,
      isBusy: isBusy == freezed ? _value.isBusy : isBusy,
      busyItem: busyItem == freezed
          ? _value.busyItem
          : busyItem // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$_ContactsState implements _ContactsState {
  _$_ContactsState(
      {this.contacts = const [],
      this.loadingStatus = ContactsStatus.initial,
      this.lastError,
      this.isBusy = false,
      this.busyItem = const []});

  @JsonKey()
  @override
  final List<Contact> contacts;
  @JsonKey()
  @override
  final ContactsStatus loadingStatus;
  @override
  final String? lastError;
  @JsonKey()
  @override
  final dynamic isBusy;
  @JsonKey()
  @override
  final List<int> busyItem;

  @override
  String toString() {
    return 'ContactsState(contacts: $contacts, loadingStatus: $loadingStatus, lastError: $lastError, isBusy: $isBusy, busyItem: $busyItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ContactsState &&
            const DeepCollectionEquality().equals(other.contacts, contacts) &&
            const DeepCollectionEquality()
                .equals(other.loadingStatus, loadingStatus) &&
            const DeepCollectionEquality().equals(other.lastError, lastError) &&
            const DeepCollectionEquality().equals(other.isBusy, isBusy) &&
            const DeepCollectionEquality().equals(other.busyItem, busyItem));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(contacts),
      const DeepCollectionEquality().hash(loadingStatus),
      const DeepCollectionEquality().hash(lastError),
      const DeepCollectionEquality().hash(isBusy),
      const DeepCollectionEquality().hash(busyItem));

  @JsonKey(ignore: true)
  @override
  _$ContactsStateCopyWith<_ContactsState> get copyWith =>
      __$ContactsStateCopyWithImpl<_ContactsState>(this, _$identity);
}

abstract class _ContactsState implements ContactsState {
  factory _ContactsState(
      {List<Contact> contacts,
      ContactsStatus loadingStatus,
      String? lastError,
      dynamic isBusy,
      List<int> busyItem}) = _$_ContactsState;

  @override
  List<Contact> get contacts;
  @override
  ContactsStatus get loadingStatus;
  @override
  String? get lastError;
  @override
  dynamic get isBusy;
  @override
  List<int> get busyItem;
  @override
  @JsonKey(ignore: true)
  _$ContactsStateCopyWith<_ContactsState> get copyWith =>
      throw _privateConstructorUsedError;
}
