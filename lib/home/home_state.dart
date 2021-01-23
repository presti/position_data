import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/position.dart';

part 'home_state.freezed.dart';

@freezed
abstract class HomeState implements _$HomeState {
  const factory HomeState({
    @required DataStatus status,
    @Default(false) bool isShowingMap,
    @Default(<Position>[]) List<Position> positions,
  }) = _HomeState;

  const HomeState._();

  /// Returns the x,y,z accuracies, in that order.
  List<Map<String, double>> axisAccuracies() {
    Map<String, double> xs = {};
    Map<String, double> ys = {};
    Map<String, double> zs = {};
    for (final pos in positions) {
      xs[pos.datetime] = pos.xAcc;
      ys[pos.datetime] = pos.yAcc;
      zs[pos.datetime] = pos.zAcc;
    }
    return [xs, ys, zs];
  }
}

@freezed
abstract class DataStatus with _$DataStatus {
  const factory DataStatus.loading() = _DataStatusLoading;

  const factory DataStatus.done() = _DataStatusDone;

  const factory DataStatus.error() = _DataStatusError;
}
