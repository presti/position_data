import 'dart:convert' as convert;

import 'package:equatable/equatable.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

import '../../utils/functional/json_failure.dart';
import '../../utils/functional/mayfail.dart';
import 'http_response_model.dart';
import 'http_service.dart';

class HttpProvider {
  final HttpService _httpService;

  const HttpProvider(this._httpService);

  Future<MayFail<HttpResponseModel, HttpFailure>> get({String url}) {
    return _call(() => _httpService.get(url));
  }

  Future<MayFail<T, Failure>> getAndDecode<T>({
    String url,
    T Function(Map<String, dynamic> json) fromJson,
  }) {
    return _getAndDecodeJson(
      url: url,
      fromJson: fromJson,
    );
  }

  Future<MayFail<T, Failure>> _getAndDecodeJson<T, J>({
    String url,
    T Function(J json) fromJson,
  }) async {
    MayFail<HttpResponseModel, HttpFailure> response = await get(url: url);
    return response.on(
      onSuccess: (res) {
        String response = res.body;
        J json;
        try {
          json = convert.json.decode(response) as J;
        } catch (e) {
          return Fail(JsonDecodingFailure('$e : $response'));
        }
        T t;
        try {
          t = fromJson(json);
        } catch (e) {
          return Fail(JsonInvalidFailure('$e : $response'));
        }
        return Success(t);
      },
      onFailure: (f) => Fail(f),
    );
  }

  Future<MayFail<HttpResponseModel, HttpFailure>> _call(
      Future<http.Response> Function() call) async {
    MayFail<HttpResponseModel, HttpFailure> mayfail;
    try {
      http.Response response = await call();
      int statusCode = response.statusCode;
      if (statusCode >= 200 && statusCode < 300) {
        mayfail = Success(
            HttpResponseModel(statusCode: statusCode, body: response.body));
      } else {
        mayfail = Fail(HttpNotSuccessfulFailure(statusCode: statusCode));
      }
    } catch (e) {
      mayfail = Fail(HttpErrorFailure(error: e));
    }

    return mayfail;
  }
}

class HttpFailure implements Failure {}

class HttpNotSuccessfulFailure with EquatableMixin implements HttpFailure {
  final int statusCode;

  const HttpNotSuccessfulFailure({this.statusCode});

  @override
  List<Object> get props => [statusCode];

  @override
  bool get stringify => true;
}

class HttpErrorFailure with EquatableMixin implements HttpFailure {
  final Object error;

  const HttpErrorFailure({@required this.error});

  @override
  List<Object> get props => [error];
}
