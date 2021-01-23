// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'position_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PositionDto _$_$_PositionDtoFromJson(Map<String, dynamic> json) {
  return _$_PositionDto(
    data: (json['data'] as List)
        ?.map((e) => e == null
            ? null
            : PositionDataDto.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    hasMore: json['hasMore'] as bool,
  );
}

Map<String, dynamic> _$_$_PositionDtoToJson(_$_PositionDto instance) =>
    <String, dynamic>{
      'data': instance.data,
      'hasMore': instance.hasMore,
    };

_$_PositionDataDto _$_$_PositionDataDtoFromJson(Map<String, dynamic> json) {
  return _$_PositionDataDto(
    bearing: (json['bearing'] as num)?.toDouble(),
    datetime: json['datetime'] as String,
    distanceFromLast: (json['distanceFromLast'] as num)?.toDouble(),
    gpsStatus: json['gpsStatus'] as String,
    lat: (json['lat'] as num)?.toDouble(),
    lon: (json['lon'] as num)?.toDouble(),
    speed: (json['speed'] as num)?.toDouble(),
    xAcc: (json['xAcc'] as num)?.toDouble(),
    yAcc: (json['yAcc'] as num)?.toDouble(),
    zAcc: (json['zAcc'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$_$_PositionDataDtoToJson(_$_PositionDataDto instance) =>
    <String, dynamic>{
      'bearing': instance.bearing,
      'datetime': instance.datetime,
      'distanceFromLast': instance.distanceFromLast,
      'gpsStatus': instance.gpsStatus,
      'lat': instance.lat,
      'lon': instance.lon,
      'speed': instance.speed,
      'xAcc': instance.xAcc,
      'yAcc': instance.yAcc,
      'zAcc': instance.zAcc,
    };
