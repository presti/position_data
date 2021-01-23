import '../utils/functional/mayfail.dart';
import 'position.dart';
import 'position_dto.dart';
import 'position_service.dart';

class PositionRepository {
  final PositionService _service;
  int _pageToQuery = PositionService.firstPage;

  PositionRepository(this._service);

  Stream<MayFail<List<Position>, Failure>> getNextPositions() {
    return _get(_pageToQuery);
  }

  Stream<MayFail<List<Position>, Failure>> _get(int page) async* {
    MayFail<PositionDto, Failure> request = await _service.get(page);
    yield* request.on(
      onSuccess: (dto) async* {
        var success = Success(_positionsFromDto(dto));
        yield success;
        if (dto.hasMore) {
          _pageToQuery = page + 1;
          yield* _get(_pageToQuery);
        }
      },
      onFailure: (f) async* {
        yield f as MayFail<List<Position>, Failure>;
      },
    );
  }

  List<Position> _positionsFromDto(PositionDto dto) {
    List<PositionDataDto> data = dto.data;
    return data.map((e) {
      return Position(
        datetime: e.datetime,
        lat: e.lat,
        lon: e.lon,
        xAcc: e.xAcc,
        yAcc: e.yAcc,
        zAcc: e.zAcc,
      );
    }).toList();
  }
}
