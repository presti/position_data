import '../providers/http/http_provider.dart';
import '../utils/functional/mayfail.dart';
import 'position_dto.dart';

class PositionService {
  static const _url =
      'https://us-central1-mynextbase-connect.cloudfunctions.net/sampleData?page=';

  static const firstPage = 0;

  final HttpProvider _httpProvider;

  const PositionService(this._httpProvider);

  Future<MayFail<PositionDto, Failure>> get(int page) {
    return _httpProvider.getAndDecode(
      url: _positionUrl(page),
      fromJson: (json) => PositionDto.fromJson(json),
    );
  }

  String _positionUrl(int page) => '$_url$page';
}
