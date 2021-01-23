import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'position_dto.freezed.dart';

part 'position_dto.g.dart';

@freezed
abstract class PositionDto with _$PositionDto {
  factory PositionDto({
    @required List<PositionDataDto> data,
    @required bool hasMore,
  }) = _PositionDto;

  factory PositionDto.fromJson(Map<String, dynamic> json) =>
      _$PositionDtoFromJson(json);
}

@freezed
abstract class PositionDataDto with _$PositionDataDto {
  const factory PositionDataDto({
    @required double bearing,
    @required String datetime,
    @required double distanceFromLast,
    @required String gpsStatus,
    @required double lat,
    @required double lon,
    @required double speed,
    @required double xAcc,
    @required double yAcc,
    @required double zAcc,
  }) = _PositionDataDto;

  factory PositionDataDto.fromJson(Map<String, dynamic> json) =>
      _$PositionDataDtoFromJson(json);
}
