// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

// ignore: unused_element
  _HomeState call(
      {@required DataStatus status,
      bool isShowingMap = false,
      List<Position> positions = const <Position>[]}) {
    return _HomeState(
      status: status,
      isShowingMap: isShowingMap,
      positions: positions,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  DataStatus get status;
  bool get isShowingMap;
  List<Position> get positions;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call({DataStatus status, bool isShowingMap, List<Position> positions});

  $DataStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;

  @override
  $Res call({
    Object status = freezed,
    Object isShowingMap = freezed,
    Object positions = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed ? _value.status : status as DataStatus,
      isShowingMap:
          isShowingMap == freezed ? _value.isShowingMap : isShowingMap as bool,
      positions:
          positions == freezed ? _value.positions : positions as List<Position>,
    ));
  }

  @override
  $DataStatusCopyWith<$Res> get status {
    if (_value.status == null) {
      return null;
    }
    return $DataStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value));
    });
  }
}

/// @nodoc
abstract class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(
          _HomeState value, $Res Function(_HomeState) then) =
      __$HomeStateCopyWithImpl<$Res>;
  @override
  $Res call({DataStatus status, bool isShowingMap, List<Position> positions});

  @override
  $DataStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$HomeStateCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(_HomeState _value, $Res Function(_HomeState) _then)
      : super(_value, (v) => _then(v as _HomeState));

  @override
  _HomeState get _value => super._value as _HomeState;

  @override
  $Res call({
    Object status = freezed,
    Object isShowingMap = freezed,
    Object positions = freezed,
  }) {
    return _then(_HomeState(
      status: status == freezed ? _value.status : status as DataStatus,
      isShowingMap:
          isShowingMap == freezed ? _value.isShowingMap : isShowingMap as bool,
      positions:
          positions == freezed ? _value.positions : positions as List<Position>,
    ));
  }
}

/// @nodoc
class _$_HomeState extends _HomeState with DiagnosticableTreeMixin {
  const _$_HomeState(
      {@required this.status,
      this.isShowingMap = false,
      this.positions = const <Position>[]})
      : assert(status != null),
        assert(isShowingMap != null),
        assert(positions != null),
        super._();

  @override
  final DataStatus status;
  @JsonKey(defaultValue: false)
  @override
  final bool isShowingMap;
  @JsonKey(defaultValue: const <Position>[])
  @override
  final List<Position> positions;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState(status: $status, isShowingMap: $isShowingMap, positions: $positions)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeState'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('isShowingMap', isShowingMap))
      ..add(DiagnosticsProperty('positions', positions));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeState &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.isShowingMap, isShowingMap) ||
                const DeepCollectionEquality()
                    .equals(other.isShowingMap, isShowingMap)) &&
            (identical(other.positions, positions) ||
                const DeepCollectionEquality()
                    .equals(other.positions, positions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(isShowingMap) ^
      const DeepCollectionEquality().hash(positions);

  @JsonKey(ignore: true)
  @override
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);
}

abstract class _HomeState extends HomeState {
  const _HomeState._() : super._();
  const factory _HomeState(
      {@required DataStatus status,
      bool isShowingMap,
      List<Position> positions}) = _$_HomeState;

  @override
  DataStatus get status;
  @override
  bool get isShowingMap;
  @override
  List<Position> get positions;
  @override
  @JsonKey(ignore: true)
  _$HomeStateCopyWith<_HomeState> get copyWith;
}

/// @nodoc
class _$DataStatusTearOff {
  const _$DataStatusTearOff();

// ignore: unused_element
  _DataStatusLoading loading() {
    return const _DataStatusLoading();
  }

// ignore: unused_element
  _DataStatusDone done() {
    return const _DataStatusDone();
  }

// ignore: unused_element
  _DataStatusError error() {
    return const _DataStatusError();
  }
}

/// @nodoc
// ignore: unused_element
const $DataStatus = _$DataStatusTearOff();

/// @nodoc
mixin _$DataStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult done(),
    @required TResult error(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult done(),
    TResult error(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(_DataStatusLoading value),
    @required TResult done(_DataStatusDone value),
    @required TResult error(_DataStatusError value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(_DataStatusLoading value),
    TResult done(_DataStatusDone value),
    TResult error(_DataStatusError value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $DataStatusCopyWith<$Res> {
  factory $DataStatusCopyWith(
          DataStatus value, $Res Function(DataStatus) then) =
      _$DataStatusCopyWithImpl<$Res>;
}

/// @nodoc
class _$DataStatusCopyWithImpl<$Res> implements $DataStatusCopyWith<$Res> {
  _$DataStatusCopyWithImpl(this._value, this._then);

  final DataStatus _value;
  // ignore: unused_field
  final $Res Function(DataStatus) _then;
}

/// @nodoc
abstract class _$DataStatusLoadingCopyWith<$Res> {
  factory _$DataStatusLoadingCopyWith(
          _DataStatusLoading value, $Res Function(_DataStatusLoading) then) =
      __$DataStatusLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$DataStatusLoadingCopyWithImpl<$Res>
    extends _$DataStatusCopyWithImpl<$Res>
    implements _$DataStatusLoadingCopyWith<$Res> {
  __$DataStatusLoadingCopyWithImpl(
      _DataStatusLoading _value, $Res Function(_DataStatusLoading) _then)
      : super(_value, (v) => _then(v as _DataStatusLoading));

  @override
  _DataStatusLoading get _value => super._value as _DataStatusLoading;
}

/// @nodoc
class _$_DataStatusLoading
    with DiagnosticableTreeMixin
    implements _DataStatusLoading {
  const _$_DataStatusLoading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DataStatus.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'DataStatus.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DataStatusLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult done(),
    @required TResult error(),
  }) {
    assert(loading != null);
    assert(done != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult done(),
    TResult error(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(_DataStatusLoading value),
    @required TResult done(_DataStatusDone value),
    @required TResult error(_DataStatusError value),
  }) {
    assert(loading != null);
    assert(done != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(_DataStatusLoading value),
    TResult done(_DataStatusDone value),
    TResult error(_DataStatusError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _DataStatusLoading implements DataStatus {
  const factory _DataStatusLoading() = _$_DataStatusLoading;
}

/// @nodoc
abstract class _$DataStatusDoneCopyWith<$Res> {
  factory _$DataStatusDoneCopyWith(
          _DataStatusDone value, $Res Function(_DataStatusDone) then) =
      __$DataStatusDoneCopyWithImpl<$Res>;
}

/// @nodoc
class __$DataStatusDoneCopyWithImpl<$Res> extends _$DataStatusCopyWithImpl<$Res>
    implements _$DataStatusDoneCopyWith<$Res> {
  __$DataStatusDoneCopyWithImpl(
      _DataStatusDone _value, $Res Function(_DataStatusDone) _then)
      : super(_value, (v) => _then(v as _DataStatusDone));

  @override
  _DataStatusDone get _value => super._value as _DataStatusDone;
}

/// @nodoc
class _$_DataStatusDone
    with DiagnosticableTreeMixin
    implements _DataStatusDone {
  const _$_DataStatusDone();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DataStatus.done()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'DataStatus.done'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DataStatusDone);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult done(),
    @required TResult error(),
  }) {
    assert(loading != null);
    assert(done != null);
    assert(error != null);
    return done();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult done(),
    TResult error(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (done != null) {
      return done();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(_DataStatusLoading value),
    @required TResult done(_DataStatusDone value),
    @required TResult error(_DataStatusError value),
  }) {
    assert(loading != null);
    assert(done != null);
    assert(error != null);
    return done(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(_DataStatusLoading value),
    TResult done(_DataStatusDone value),
    TResult error(_DataStatusError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class _DataStatusDone implements DataStatus {
  const factory _DataStatusDone() = _$_DataStatusDone;
}

/// @nodoc
abstract class _$DataStatusErrorCopyWith<$Res> {
  factory _$DataStatusErrorCopyWith(
          _DataStatusError value, $Res Function(_DataStatusError) then) =
      __$DataStatusErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$DataStatusErrorCopyWithImpl<$Res>
    extends _$DataStatusCopyWithImpl<$Res>
    implements _$DataStatusErrorCopyWith<$Res> {
  __$DataStatusErrorCopyWithImpl(
      _DataStatusError _value, $Res Function(_DataStatusError) _then)
      : super(_value, (v) => _then(v as _DataStatusError));

  @override
  _DataStatusError get _value => super._value as _DataStatusError;
}

/// @nodoc
class _$_DataStatusError
    with DiagnosticableTreeMixin
    implements _DataStatusError {
  const _$_DataStatusError();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DataStatus.error()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'DataStatus.error'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DataStatusError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult done(),
    @required TResult error(),
  }) {
    assert(loading != null);
    assert(done != null);
    assert(error != null);
    return error();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult done(),
    TResult error(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(_DataStatusLoading value),
    @required TResult done(_DataStatusDone value),
    @required TResult error(_DataStatusError value),
  }) {
    assert(loading != null);
    assert(done != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(_DataStatusLoading value),
    TResult done(_DataStatusDone value),
    TResult error(_DataStatusError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _DataStatusError implements DataStatus {
  const factory _DataStatusError() = _$_DataStatusError;
}
