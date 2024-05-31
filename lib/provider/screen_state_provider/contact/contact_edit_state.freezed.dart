// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'contact_edit_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ContactEditStateTearOff {
  const _$ContactEditStateTearOff();

  _ContactEditState call(
      {ContactEditStatus status = ContactEditStatus.initial,
      String fullName = '',
      String firstName = '',
      String lastName = '',
      String street = '',
      String phone = '',
      Contact? contact}) {
    return _ContactEditState(
      status: status,
      fullName: fullName,
      firstName: firstName,
      lastName: lastName,
      street: street,
      phone: phone,
      contact: contact,
    );
  }
}

/// @nodoc
const $ContactEditState = _$ContactEditStateTearOff();

/// @nodoc
mixin _$ContactEditState {
  ContactEditStatus get status => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get street => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  Contact? get contact => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContactEditStateCopyWith<ContactEditState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactEditStateCopyWith<$Res> {
  factory $ContactEditStateCopyWith(
          ContactEditState value, $Res Function(ContactEditState) then) =
      _$ContactEditStateCopyWithImpl<$Res>;
  $Res call(
      {ContactEditStatus status,
      String fullName,
      String firstName,
      String lastName,
      String street,
      String phone,
      Contact? contact});

  $ContactCopyWith<$Res>? get contact;
}

/// @nodoc
class _$ContactEditStateCopyWithImpl<$Res>
    implements $ContactEditStateCopyWith<$Res> {
  _$ContactEditStateCopyWithImpl(this._value, this._then);

  final ContactEditState _value;
  // ignore: unused_field
  final $Res Function(ContactEditState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? fullName = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? street = freezed,
    Object? phone = freezed,
    Object? contact = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ContactEditStatus,
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      street: street == freezed
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      contact: contact == freezed
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact?,
    ));
  }

  @override
  $ContactCopyWith<$Res>? get contact {
    if (_value.contact == null) {
      return null;
    }

    return $ContactCopyWith<$Res>(_value.contact!, (value) {
      return _then(_value.copyWith(contact: value));
    });
  }
}

/// @nodoc
abstract class _$ContactEditStateCopyWith<$Res>
    implements $ContactEditStateCopyWith<$Res> {
  factory _$ContactEditStateCopyWith(
          _ContactEditState value, $Res Function(_ContactEditState) then) =
      __$ContactEditStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {ContactEditStatus status,
      String fullName,
      String firstName,
      String lastName,
      String street,
      String phone,
      Contact? contact});

  @override
  $ContactCopyWith<$Res>? get contact;
}

/// @nodoc
class __$ContactEditStateCopyWithImpl<$Res>
    extends _$ContactEditStateCopyWithImpl<$Res>
    implements _$ContactEditStateCopyWith<$Res> {
  __$ContactEditStateCopyWithImpl(
      _ContactEditState _value, $Res Function(_ContactEditState) _then)
      : super(_value, (v) => _then(v as _ContactEditState));

  @override
  _ContactEditState get _value => super._value as _ContactEditState;

  @override
  $Res call({
    Object? status = freezed,
    Object? fullName = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? street = freezed,
    Object? phone = freezed,
    Object? contact = freezed,
  }) {
    return _then(_ContactEditState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ContactEditStatus,
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      street: street == freezed
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      contact: contact == freezed
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact?,
    ));
  }
}

/// @nodoc

class _$_ContactEditState implements _ContactEditState {
  _$_ContactEditState(
      {this.status = ContactEditStatus.initial,
      this.fullName = '',
      this.firstName = '',
      this.lastName = '',
      this.street = '',
      this.phone = '',
      this.contact});

  @JsonKey()
  @override
  final ContactEditStatus status;
  @JsonKey()
  @override
  final String fullName;
  @JsonKey()
  @override
  final String firstName;
  @JsonKey()
  @override
  final String lastName;
  @JsonKey()
  @override
  final String street;
  @JsonKey()
  @override
  final String phone;
  @override
  final Contact? contact;

  @override
  String toString() {
    return 'ContactEditState(status: $status, fullName: $fullName, firstName: $firstName, lastName: $lastName, street: $street, phone: $phone, contact: $contact)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ContactEditState &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.fullName, fullName) &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality().equals(other.street, street) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality().equals(other.contact, contact));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(fullName),
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(lastName),
      const DeepCollectionEquality().hash(street),
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(contact));

  @JsonKey(ignore: true)
  @override
  _$ContactEditStateCopyWith<_ContactEditState> get copyWith =>
      __$ContactEditStateCopyWithImpl<_ContactEditState>(this, _$identity);
}

abstract class _ContactEditState implements ContactEditState {
  factory _ContactEditState(
      {ContactEditStatus status,
      String fullName,
      String firstName,
      String lastName,
      String street,
      String phone,
      Contact? contact}) = _$_ContactEditState;

  @override
  ContactEditStatus get status;
  @override
  String get fullName;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get street;
  @override
  String get phone;
  @override
  Contact? get contact;
  @override
  @JsonKey(ignore: true)
  _$ContactEditStateCopyWith<_ContactEditState> get copyWith =>
      throw _privateConstructorUsedError;
}
