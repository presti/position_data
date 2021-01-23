// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'position_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PositionDto _$PositionDtoFromJson(Map<String, dynamic> json) {
  return _PositionDto.fromJson(json);
}

/// @nodoc
class _$PositionDtoTearOff {
  const _$PositionDtoTearOff();

// ignore: unused_element
  _PositionDto call(
      {@required List<PositionDataDto> data, @required bool hasMore}) {
    return _PositionDto(
      data: data,
      hasMore: hasMore,
    );
  }

// ignore: unused_element
  PositionDto fromJson(Map<String, Object> json) {
    return PositionDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PositionDto = _$PositionDtoTearOff();

/// @nodoc
mixin _$PositionDto {
  List<PositionDataDto> get data;
  bool get hasMore;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $PositionDtoCopyWith<PositionDto> get copyWith;
}

/// @nodoc
abstract class $PositionDtoCopyWith<$Res> {
  factory $PositionDtoCopyWith(
          PositionDto value, $Res Function(PositionDto) then) =
      _$PositionDtoCopyWithImpl<$Res>;
  $Res call({List<PositionDataDto> data, bool hasMore});
}

/// @nodoc
class _$PositionDtoCopyWithImpl<$Res> implements $PositionDtoCopyWith<$Res> {
  _$PositionDtoCopyWithImpl(this._value, this._then);

  final PositionDto _value;
  // ignore: unused_field
  final $Res Function(PositionDto) _then;

  @override
  $Res call({
    Object data = freezed,
    Object hasMore = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed ? _value.data : data as List<PositionDataDto>,
      hasMore: hasMore == freezed ? _value.hasMore : hasMore as bool,
    ));
  }
}

/// @nodoc
abstract class _$PositionDtoCopyWith<$Res>
    implements $PositionDtoCopyWith<$Res> {
  factory _$PositionDtoCopyWith(
          _PositionDto value, $Res Function(_PositionDto) then) =
      __$PositionDtoCopyWithImpl<$Res>;
  @override
  $Res call({List<PositionDataDto> data, bool hasMore});
}

/// @nodoc
class __$PositionDtoCopyWithImpl<$Res> extends _$PositionDtoCopyWithImpl<$Res>
    implements _$PositionDtoCopyWith<$Res> {
  __$PositionDtoCopyWithImpl(
      _PositionDto _value, $Res Function(_PositionDto) _then)
      : super(_value, (v) => _then(v as _PositionDto));

  @override
  _PositionDto get _value => super._value as _PositionDto;

  @override
  $Res call({
    Object data = freezed,
    Object hasMore = freezed,
  }) {
    return _then(_PositionDto(
      data: data == freezed ? _value.data : data as List<PositionDataDto>,
      hasMore: hasMore == freezed ? _value.hasMore : hasMore as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PositionDto with DiagnosticableTreeMixin implements _PositionDto {
  _$_PositionDto({@required this.data, @required this.hasMore})
      : assert(data != null),
        assert(hasMore != null);

  factory _$_PositionDto.fromJson(Map<String, dynamic> json) =>
      _$_$_PositionDtoFromJson(json);

  @override
  final List<PositionDataDto> data;
  @override
  final bool hasMore;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PositionDto(data: $data, hasMore: $hasMore)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PositionDto'))
      ..add(DiagnosticsProperty('data', data))
      ..add(DiagnosticsProperty('hasMore', hasMore));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PositionDto &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.hasMore, hasMore) ||
                const DeepCollectionEquality().equals(other.hasMore, hasMore)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(hasMore);

  @JsonKey(ignore: true)
  @override
  _$PositionDtoCopyWith<_PositionDto> get copyWith =>
      __$PositionDtoCopyWithImpl<_PositionDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PositionDtoToJson(this);
  }
}

abstract class _PositionDto implements PositionDto {
  factory _PositionDto(
      {@required List<PositionDataDto> data,
      @required bool hasMore}) = _$_PositionDto;

  factory _PositionDto.fromJson(Map<String, dynamic> json) =
      _$_PositionDto.fromJson;

  @override
  List<PositionDataDto> get data;
  @override
  bool get hasMore;
  @override
  @JsonKey(ignore: true)
  _$PositionDtoCopyWith<_PositionDto> get copyWith;
}

PositionDataDto _$PositionDataDtoFromJson(Map<String, dynamic> json) {
  return _PositionDataDto.fromJson(json);
}

/// @nodoc
class _$PositionDataDtoTearOff {
  const _$PositionDataDtoTearOff();

// ignore: unused_element
  _PositionDataDto call(
      {@required double bearing,
      @required String datetime,
      @required double distanceFromLast,
      @required String gpsStatus,
      @required double lat,
      @required double lon,
      @required double speed,
      @required double xAcc,
      @required double yAcc,
      @required double zAcc}) {
    return _PositionDataDto(
      bearing: bearing,
      datetime: datetime,
      distanceFromLast: distanceFromLast,
      gpsStatus: gpsStatus,
      lat: lat,
      lon: lon,
      speed: speed,
      xAcc: xAcc,
      yAcc: yAcc,
      zAcc: zAcc,
    );
  }

// ignore: unused_element
  PositionDataDto fromJson(Map<String, Object> json) {
    return PositionDataDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PositionDataDto = _$PositionDataDtoTearOff();

/// @nodoc
mixin _$PositionDataDto {
  double get bearing;
  String get datetime;
  double get distanceFromLast;
  String get gpsStatus;
  double get lat;
  double get lon;
  double get speed;
  double get xAcc;
  double get yAcc;
  double get zAcc;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $PositionDataDtoCopyWith<PositionDataDto> get copyWith;
}

/// @nodoc
abstract class $PositionDataDtoCopyWith<$Res> {
  factory $PositionDataDtoCopyWith(
          PositionDataDto value, $Res Function(PositionDataDto) then) =
      _$PositionDataDtoCopyWithImpl<$Res>;
  $Res call(
      {double bearing,
      String datetime,
      double distanceFromLast,
      String gpsStatus,
      double lat,
      double lon,
      double speed,
      double xAcc,
      double yAcc,
      double zAcc});
}

/// @nodoc
class _$PositionDataDtoCopyWithImpl<$Res>
    implements $PositionDataDtoCopyWith<$Res> {
  _$PositionDataDtoCopyWithImpl(this._value, this._then);

  final PositionDataDto _value;
  // ignore: unused_field
  final $Res Function(PositionDataDto) _then;

  @override
  $Res call({
    Object bearing = freezed,
    Object datetime = freezed,
    Object distanceFromLast = freezed,
    Object gpsStatus = freezed,
    Object lat = freezed,
    Object lon = freezed,
    Object speed = freezed,
    Object xAcc = freezed,
    Object yAcc = freezed,
    Object zAcc = freezed,
  }) {
    return _then(_value.copyWith(
      bearing: bearing == freezed ? _value.bearing : bearing as double,
      datetime: datetime == freezed ? _value.datetime : datetime as String,
      distanceFromLast: distanceFromLast == freezed
          ? _value.distanceFromLast
          : distanceFromLast as double,
      gpsStatus: gpsStatus == freezed ? _value.gpsStatus : gpsStatus as String,
      lat: lat == freezed ? _value.lat : lat as double,
      lon: lon == freezed ? _value.lon : lon as double,
      speed: speed == freezed ? _value.speed : speed as double,
      xAcc: xAcc == freezed ? _value.xAcc : xAcc as double,
      yAcc: yAcc == freezed ? _value.yAcc : yAcc as double,
      zAcc: zAcc == freezed ? _value.zAcc : zAcc as double,
    ));
  }
}

/// @nodoc
abstract class _$PositionDataDtoCopyWith<$Res>
    implements $PositionDataDtoCopyWith<$Res> {
  factory _$PositionDataDtoCopyWith(
          _PositionDataDto value, $Res Function(_PositionDataDto) then) =
      __$PositionDataDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {double bearing,
      String datetime,
      double distanceFromLast,
      String gpsStatus,
      double lat,
      double lon,
      double speed,
      double xAcc,
      double yAcc,
      double zAcc});
}

/// @nodoc
class __$PositionDataDtoCopyWithImpl<$Res>
    extends _$PositionDataDtoCopyWithImpl<$Res>
    implements _$PositionDataDtoCopyWith<$Res> {
  __$PositionDataDtoCopyWithImpl(
      _PositionDataDto _value, $Res Function(_PositionDataDto) _then)
      : super(_value, (v) => _then(v as _PositionDataDto));

  @override
  _PositionDataDto get _value => super._value as _PositionDataDto;

  @override
  $Res call({
    Object bearing = freezed,
    Object datetime = freezed,
    Object distanceFromLast = freezed,
    Object gpsStatus = freezed,
    Object lat = freezed,
    Object lon = freezed,
    Object speed = freezed,
    Object xAcc = freezed,
    Object yAcc = freezed,
    Object zAcc = freezed,
  }) {
    return _then(_PositionDataDto(
      bearing: bearing == freezed ? _value.bearing : bearing as double,
      datetime: datetime == freezed ? _value.datetime : datetime as String,
      distanceFromLast: distanceFromLast == freezed
          ? _value.distanceFromLast
          : distanceFromLast as double,
      gpsStatus: gpsStatus == freezed ? _value.gpsStatus : gpsStatus as String,
      lat: lat == freezed ? _value.lat : lat as double,
      lon: lon == freezed ? _value.lon : lon as double,
      speed: speed == freezed ? _value.speed : speed as double,
      xAcc: xAcc == freezed ? _value.xAcc : xAcc as double,
      yAcc: yAcc == freezed ? _value.yAcc : yAcc as double,
      zAcc: zAcc == freezed ? _value.zAcc : zAcc as double,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PositionDataDto
    with DiagnosticableTreeMixin
    implements _PositionDataDto {
  const _$_PositionDataDto(
      {@required this.bearing,
      @required this.datetime,
      @required this.distanceFromLast,
      @required this.gpsStatus,
      @required this.lat,
      @required this.lon,
      @required this.speed,
      @required this.xAcc,
      @required this.yAcc,
      @required this.zAcc})
      : assert(bearing != null),
        assert(datetime != null),
        assert(distanceFromLast != null),
        assert(gpsStatus != null),
        assert(lat != null),
        assert(lon != null),
        assert(speed != null),
        assert(xAcc != null),
        assert(yAcc != null),
        assert(zAcc != null);

  factory _$_PositionDataDto.fromJson(Map<String, dynamic> json) =>
      _$_$_PositionDataDtoFromJson(json);

  @override
  final double bearing;
  @override
  final String datetime;
  @override
  final double distanceFromLast;
  @override
  final String gpsStatus;
  @override
  final double lat;
  @override
  final double lon;
  @override
  final double speed;
  @override
  final double xAcc;
  @override
  final double yAcc;
  @override
  final double zAcc;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PositionDataDto(bearing: $bearing, datetime: $datetime, distanceFromLast: $distanceFromLast, gpsStatus: $gpsStatus, lat: $lat, lon: $lon, speed: $speed, xAcc: $xAcc, yAcc: $yAcc, zAcc: $zAcc)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PositionDataDto'))
      ..add(DiagnosticsProperty('bearing', bearing))
      ..add(DiagnosticsProperty('datetime', datetime))
      ..add(DiagnosticsProperty('distanceFromLast', distanceFromLast))
      ..add(DiagnosticsProperty('gpsStatus', gpsStatus))
      ..add(DiagnosticsProperty('lat', lat))
      ..add(DiagnosticsProperty('lon', lon))
      ..add(DiagnosticsProperty('speed', speed))
      ..add(DiagnosticsProperty('xAcc', xAcc))
      ..add(DiagnosticsProperty('yAcc', yAcc))
      ..add(DiagnosticsProperty('zAcc', zAcc));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PositionDataDto &&
            (identical(other.bearing, bearing) ||
                const DeepCollectionEquality()
                    .equals(other.bearing, bearing)) &&
            (identical(other.datetime, datetime) ||
                const DeepCollectionEquality()
                    .equals(other.datetime, datetime)) &&
            (identical(other.distanceFromLast, distanceFromLast) ||
                const DeepCollectionEquality()
                    .equals(other.distanceFromLast, distanceFromLast)) &&
            (identical(other.gpsStatus, gpsStatus) ||
                const DeepCollectionEquality()
                    .equals(other.gpsStatus, gpsStatus)) &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.lon, lon) ||
                const DeepCollectionEquality().equals(other.lon, lon)) &&
            (identical(other.speed, speed) ||
                const DeepCollectionEquality().equals(other.speed, speed)) &&
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
      const DeepCollectionEquality().hash(bearing) ^
      const DeepCollectionEquality().hash(datetime) ^
      const DeepCollectionEquality().hash(distanceFromLast) ^
      const DeepCollectionEquality().hash(gpsStatus) ^
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(lon) ^
      const DeepCollectionEquality().hash(speed) ^
      const DeepCollectionEquality().hash(xAcc) ^
      const DeepCollectionEquality().hash(yAcc) ^
      const DeepCollectionEquality().hash(zAcc);

  @JsonKey(ignore: true)
  @override
  _$PositionDataDtoCopyWith<_PositionDataDto> get copyWith =>
      __$PositionDataDtoCopyWithImpl<_PositionDataDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PositionDataDtoToJson(this);
  }
}

abstract class _PositionDataDto implements PositionDataDto {
  const factory _PositionDataDto(
      {@required double bearing,
      @required String datetime,
      @required double distanceFromLast,
      @required String gpsStatus,
      @required double lat,
      @required double lon,
      @required double speed,
      @required double xAcc,
      @required double yAcc,
      @required double zAcc}) = _$_PositionDataDto;

  factory _PositionDataDto.fromJson(Map<String, dynamic> json) =
      _$_PositionDataDto.fromJson;

  @override
  double get bearing;
  @override
  String get datetime;
  @override
  double get distanceFromLast;
  @override
  String get gpsStatus;
  @override
  double get lat;
  @override
  double get lon;
  @override
  double get speed;
  @override
  double get xAcc;
  @override
  double get yAcc;
  @override
  double get zAcc;
  @override
  @JsonKey(ignore: true)
  _$PositionDataDtoCopyWith<_PositionDataDto> get copyWith;
}
