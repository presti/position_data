// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'position.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PositionTearOff {
  const _$PositionTearOff();

// ignore: unused_element
  _Position call(
      {@required String datetime,
      @required double lat,
      @required double lon,
      @required double xAcc,
      @required double yAcc,
      @required double zAcc}) {
    return _Position(
      datetime: datetime,
      lat: lat,
      lon: lon,
      xAcc: xAcc,
      yAcc: yAcc,
      zAcc: zAcc,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Position = _$PositionTearOff();

/// @nodoc
mixin _$Position {
  String get datetime;
  double get lat;
  double get lon;
  double get xAcc;
  double get yAcc;
  double get zAcc;

  @JsonKey(ignore: true)
  $PositionCopyWith<Position> get copyWith;
}

/// @nodoc
abstract class $PositionCopyWith<$Res> {
  factory $PositionCopyWith(Position value, $Res Function(Position) then) =
      _$PositionCopyWithImpl<$Res>;
  $Res call(
      {String datetime,
      double lat,
      double lon,
      double xAcc,
      double yAcc,
      double zAcc});
}

/// @nodoc
class _$PositionCopyWithImpl<$Res> implements $PositionCopyWith<$Res> {
  _$PositionCopyWithImpl(this._value, this._then);

  final Position _value;
  // ignore: unused_field
  final $Res Function(Position) _then;

  @override
  $Res call({
    Object datetime = freezed,
    Object lat = freezed,
    Object lon = freezed,
    Object xAcc = freezed,
    Object yAcc = freezed,
    Object zAcc = freezed,
  }) {
    return _then(_value.copyWith(
      datetime: datetime == freezed ? _value.datetime : datetime as String,
      lat: lat == freezed ? _value.lat : lat as double,
      lon: lon == freezed ? _value.lon : lon as double,
      xAcc: xAcc == freezed ? _value.xAcc : xAcc as double,
      yAcc: yAcc == freezed ? _value.yAcc : yAcc as double,
      zAcc: zAcc == freezed ? _value.zAcc : zAcc as double,
    ));
  }
}

/// @nodoc
abstract class _$PositionCopyWith<$Res> implements $PositionCopyWith<$Res> {
  factory _$PositionCopyWith(_Position value, $Res Function(_Position) then) =
      __$PositionCopyWithImpl<$Res>;
  @override
  $Res call(
      {String datetime,
      double lat,
      double lon,
      double xAcc,
      double yAcc,
      double zAcc});
}

/// @nodoc
class __$PositionCopyWithImpl<$Res> extends _$PositionCopyWithImpl<$Res>
    implements _$PositionCopyWith<$Res> {
  __$PositionCopyWithImpl(_Position _value, $Res Function(_Position) _then)
      : super(_value, (v) => _then(v as _Position));

  @override
  _Position get _value => super._value as _Position;

  @override
  $Res call({
    Object datetime = freezed,
    Object lat = freezed,
    Object lon = freezed,
    Object xAcc = freezed,
    Object yAcc = freezed,
    Object zAcc = freezed,
  }) {
    return _then(_Position(
      datetime: datetime == freezed ? _value.datetime : datetime as String,
      lat: lat == freezed ? _value.lat : lat as double,
      lon: lon == freezed ? _value.lon : lon as double,
      xAcc: xAcc == freezed ? _value.xAcc : xAcc as double,
      yAcc: yAcc == freezed ? _value.yAcc : yAcc as double,
      zAcc: zAcc == freezed ? _value.zAcc : zAcc as double,
    ));
  }
}

/// @nodoc
class _$_Position with DiagnosticableTreeMixin implements _Position {
  const _$_Position(
      {@required this.datetime,
      @required this.lat,
      @required this.lon,
      @required this.xAcc,
      @required this.yAcc,
      @required this.zAcc})
      : assert(datetime != null),
        assert(lat != null),
        assert(lon != null),
        assert(xAcc != null),
        assert(yAcc != null),
        assert(zAcc != null);

  @override
  final String datetime;
  @override
  final double lat;
  @override
  final double lon;
  @override
  final double xAcc;
  @override
  final double yAcc;
  @override
  final double zAcc;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Position(datetime: $datetime, lat: $lat, lon: $lon, xAcc: $xAcc, yAcc: $yAcc, zAcc: $zAcc)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Position'))
      ..add(DiagnosticsProperty('datetime', datetime))
      ..add(DiagnosticsProperty('lat', lat))
      ..add(DiagnosticsProperty('lon', lon))
      ..add(DiagnosticsProperty('xAcc', xAcc))
      ..add(DiagnosticsProperty('yAcc', yAcc))
      ..add(DiagnosticsProperty('zAcc', zAcc));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Position &&
            (identical(other.datetime, datetime) ||
                const DeepCollectionEquality()
                    .equals(other.datetime, datetime)) &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.lon, lon) ||
                const DeepCollectionEquality().equals(other.lon, lon)) &&
            (identical(other.xAcc, xAcc) ||
                const DeepCollectionEquality().equals(other.xAcc, xAcc)) &&
            (identical(other.yAcc, yAcc) ||
                const DeepCollectionEquality().equals(other.yAcc, yAcc)) &&
            (identical(other.zAcc, zAcc) ||
                const DeepCollectionEquality().equals(other.zAcc, zAcc)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(datetime) ^
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(lon) ^
      const DeepCollectionEquality().hash(xAcc) ^
      const DeepCollectionEquality().hash(yAcc) ^
      const DeepCollectionEquality().hash(zAcc);

  @JsonKey(ignore: true)
  @override
  _$PositionCopyWith<_Position> get copyWith =>
      __$PositionCopyWithImpl<_Position>(this, _$identity);
}

abstract class _Position implements Position {
  const factory _Position(
      {@required String datetime,
      @required double lat,
      @required double lon,
      @required double xAcc,
      @required double yAcc,
      @required double zAcc}) = _$_Position;

  @override
  String get datetime;
  @override
  double get lat;
  @override
  double get lon;
  @override
  double get xAcc;
  @override
  double get yAcc;
  @override
  double get zAcc;
  @override
  @JsonKey(ignore: true)
  _$PositionCopyWith<_Position> get copyWith;
}
