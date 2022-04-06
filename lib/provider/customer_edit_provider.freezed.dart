// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'customer_edit_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CustomerEditStateTearOff {
  const _$CustomerEditStateTearOff();

  _CustomerEditState call(
      {CustomersStatus loadingStatus = CustomersStatus.initial,
      String? id,
      String? name,
      String? status,
      StateAction? lastActionResult}) {
    return _CustomerEditState(
      loadingStatus: loadingStatus,
      id: id,
      name: name,
      status: status,
      lastActionResult: lastActionResult,
    );
  }
}

/// @nodoc
const $CustomerEditState = _$CustomerEditStateTearOff();

/// @nodoc
mixin _$CustomerEditState {
  CustomersStatus get loadingStatus => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  StateAction? get lastActionResult => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomerEditStateCopyWith<CustomerEditState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerEditStateCopyWith<$Res> {
  factory $CustomerEditStateCopyWith(
          CustomerEditState value, $Res Function(CustomerEditState) then) =
      _$CustomerEditStateCopyWithImpl<$Res>;
  $Res call(
      {CustomersStatus loadingStatus,
      String? id,
      String? name,
      String? status,
      StateAction? lastActionResult});
}

/// @nodoc
class _$CustomerEditStateCopyWithImpl<$Res>
    implements $CustomerEditStateCopyWith<$Res> {
  _$CustomerEditStateCopyWithImpl(this._value, this._then);

  final CustomerEditState _value;
  // ignore: unused_field
  final $Res Function(CustomerEditState) _then;

  @override
  $Res call({
    Object? loadingStatus = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? status = freezed,
    Object? lastActionResult = freezed,
  }) {
    return _then(_value.copyWith(
      loadingStatus: loadingStatus == freezed
          ? _value.loadingStatus
          : loadingStatus // ignore: cast_nullable_to_non_nullable
              as CustomersStatus,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      lastActionResult: lastActionResult == freezed
          ? _value.lastActionResult
          : lastActionResult // ignore: cast_nullable_to_non_nullable
              as StateAction?,
    ));
  }
}

/// @nodoc
abstract class _$CustomerEditStateCopyWith<$Res>
    implements $CustomerEditStateCopyWith<$Res> {
  factory _$CustomerEditStateCopyWith(
          _CustomerEditState value, $Res Function(_CustomerEditState) then) =
      __$CustomerEditStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {CustomersStatus loadingStatus,
      String? id,
      String? name,
      String? status,
      StateAction? lastActionResult});
}

/// @nodoc
class __$CustomerEditStateCopyWithImpl<$Res>
    extends _$CustomerEditStateCopyWithImpl<$Res>
    implements _$CustomerEditStateCopyWith<$Res> {
  __$CustomerEditStateCopyWithImpl(
      _CustomerEditState _value, $Res Function(_CustomerEditState) _then)
      : super(_value, (v) => _then(v as _CustomerEditState));

  @override
  _CustomerEditState get _value => super._value as _CustomerEditState;

  @override
  $Res call({
    Object? loadingStatus = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? status = freezed,
    Object? lastActionResult = freezed,
  }) {
    return _then(_CustomerEditState(
      loadingStatus: loadingStatus == freezed
          ? _value.loadingStatus
          : loadingStatus // ignore: cast_nullable_to_non_nullable
              as CustomersStatus,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      lastActionResult: lastActionResult == freezed
          ? _value.lastActionResult
          : lastActionResult // ignore: cast_nullable_to_non_nullable
              as StateAction?,
    ));
  }
}

/// @nodoc

class _$_CustomerEditState
    with DiagnosticableTreeMixin
    implements _CustomerEditState {
  _$_CustomerEditState(
      {this.loadingStatus = CustomersStatus.initial,
      this.id,
      this.name,
      this.status,
      this.lastActionResult});

  @JsonKey()
  @override
  final CustomersStatus loadingStatus;
  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? status;
  @override
  final StateAction? lastActionResult;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CustomerEditState(loadingStatus: $loadingStatus, id: $id, name: $name, status: $status, lastActionResult: $lastActionResult)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CustomerEditState'))
      ..add(DiagnosticsProperty('loadingStatus', loadingStatus))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('lastActionResult', lastActionResult));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CustomerEditState &&
            const DeepCollectionEquality()
                .equals(other.loadingStatus, loadingStatus) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.lastActionResult, lastActionResult));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(loadingStatus),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(lastActionResult));

  @JsonKey(ignore: true)
  @override
  _$CustomerEditStateCopyWith<_CustomerEditState> get copyWith =>
      __$CustomerEditStateCopyWithImpl<_CustomerEditState>(this, _$identity);
}

abstract class _CustomerEditState implements CustomerEditState {
  factory _CustomerEditState(
      {CustomersStatus loadingStatus,
      String? id,
      String? name,
      String? status,
      StateAction? lastActionResult}) = _$_CustomerEditState;

  @override
  CustomersStatus get loadingStatus;
  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get status;
  @override
  StateAction? get lastActionResult;
  @override
  @JsonKey(ignore: true)
  _$CustomerEditStateCopyWith<_CustomerEditState> get copyWith =>
      throw _privateConstructorUsedError;
}
