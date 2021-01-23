import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'position.freezed.dart';

@freezed
abstract class Position with _$Position {
  const factory Position({
    @required String datetime,
    @required double lat,
    @required double lon,
    @required double xAcc,
    @required double yAcc,
    @required double zAcc,
  }) = _Position;
}
