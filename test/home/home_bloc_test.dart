import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:position_data/data/position.dart';
import 'package:position_data/data/position_repository.dart';
import 'package:position_data/home/home_bloc.dart';
import 'package:position_data/home/home_state.dart';
import 'package:position_data/utils/functional/mayfail.dart';

void main() {
  // As this is a sample, there are some edge cases not being tested,
  // like when a page has no positions, or when the position is
  // invalid. For this last one, the position should create itself
  // and do the needed validations so if we have a Position, we can
  // be certain that it is a valid one.
  // Also it is not being tested the case when we retry when we
  // already fetched some (or all) pages. To so so, a Fake
  // [PositionService] should be done that the
  // [FakePositionRepository] relies into to get the pages.
  _testInit();
  _testRetry();
}

void _testInit() {
  group('init', () {
    blocTest<HomeBloc, HomeState>(
      'with empty list, end in "done" state',
      build: () => HomeBloc(_FakePositionRepository([[]])),
      expect: const <HomeState>[
        HomeState(status: DataStatus.loading()),
        HomeState(status: DataStatus.done()),
      ],
    );

    blocTest<HomeBloc, HomeState>(
      'with fail empty list, end in "error" state',
      build: () => HomeBloc(_FakePositionRepository([[]], endFailing: true)),
      expect: const <HomeState>[
        HomeState(status: DataStatus.loading()),
        HomeState(status: DataStatus.error()),
      ],
    );

    List<Position> page = [_MockPosition(), _MockPosition()];
    List<List<Position>> pagesSingle = [page];
    blocTest<HomeBloc, HomeState>(
      'with 1 page list, end in "done" state',
      build: () => HomeBloc(_FakePositionRepository(pagesSingle)),
      expect: <HomeState>[
        _stateOf(const DataStatus.loading(), pagesSingle),
        _stateOf(const DataStatus.done(), pagesSingle),
      ],
    );

    blocTest<HomeBloc, HomeState>(
      'with 1 page list ending in Failure, end in "error" state',
      build: () =>
          HomeBloc(_FakePositionRepository(pagesSingle, endFailing: true)),
      expect: <HomeState>[
        _stateOf(const DataStatus.loading(), pagesSingle),
        _stateOf(const DataStatus.error(), pagesSingle),
      ],
    );

    List<List<Position>> pagesMulti = [page, page, page];
    blocTest<HomeBloc, HomeState>(
      'with many pages list, end in "done" state',
      build: () => HomeBloc(_FakePositionRepository(pagesMulti)),
      expect: <HomeState>[
        ...[
          for (int i = 0; i < pagesMulti.length; i++)
            _stateOf(const DataStatus.loading(), pagesMulti, take: i + 1),
        ],
        _stateOf(const DataStatus.done(), pagesMulti),
      ],
    );

    blocTest<HomeBloc, HomeState>(
      'with many pages list ending in Failure, end in "error" state',
      build: () =>
          HomeBloc(_FakePositionRepository(pagesMulti, endFailing: true)),
      expect: <HomeState>[
        ...[
          for (int i = 0; i < pagesMulti.length; i++)
            _stateOf(const DataStatus.loading(), pagesMulti, take: i + 1),
        ],
        _stateOf(const DataStatus.error(), pagesMulti),
      ],
    );
  });
}

void _testRetry() {
  group('retry', () {
    _FakePositionRepository repository;
    setUp(() => repository = _FakePositionRepository([[]], endFailing: true));

    blocTest<HomeBloc, HomeState>(
      'with no page retrieved, get all pages',
      build: () => HomeBloc(repository),
      act: (bloc) {
        repository.endFailing = false;
        bloc.retry();
      },
      expect: const <HomeState>[
        HomeState(status: DataStatus.loading()),
        HomeState(status: DataStatus.done()),
      ],
    );
  });
}

HomeState _stateOf(DataStatus status, List<List<Position>> pages, {int take}) {
  return HomeState(
    status: status,
    positions:
        pages.take(take ?? pages.length).fold([], (list, e) => list..addAll(e)),
  );
}

class _MockPosition extends Mock implements Position {}

class _FakePositionRepository extends PositionRepository {
  List<List<Position>> positions;
  bool endFailing;

  _FakePositionRepository(this.positions, {this.endFailing = false})
      : super(null);

  @override
  Stream<MayFail<List<Position>, Failure>> getNextPositions() async* {
    for (final pos in positions) {
      yield Success(pos);
    }
    if (endFailing) {
      yield Fail(Failure());
    }
  }
}
