import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/position.dart';
import '../data/position_repository.dart';
import '../utils/functional/mayfail.dart';
import 'home_state.dart';

class HomeBloc extends Cubit<HomeState> {
  final PositionRepository repository;

  HomeBloc(this.repository)
      : super(const HomeState(status: DataStatus.loading())) {
    _getNextPositions();
  }

  void retry() {
    _emitStatus(const DataStatus.loading());
    _getNextPositions();
  }

  void goToMap() => emit(state.copyWith(isShowingMap: true));

  void goToChart() => emit(state.copyWith(isShowingMap: false));

  void _getNextPositions() {
    repository.getNextPositions().listen(
      (MayFail<List<Position>, Failure> data) {
        data.on(
          onSuccess: (positions) {
            emit(state.copyWith(
              positions: [...state.positions, ...positions],
            ));
          },
          onFailure: (f) => _emitStatus(const DataStatus.error()),
        );
      },
      onDone: () {
        state.status.maybeWhen(
          loading: () => _emitStatus(const DataStatus.done()),
          orElse: () {},
        );
      },
      onError: (dynamic e) => _emitStatus(const DataStatus.error()),
    );
  }

  void _emitStatus(DataStatus status) => emit(state.copyWith(status: status));
}
