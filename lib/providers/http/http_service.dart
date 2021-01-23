import 'dart:async';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:retry/retry.dart' as rt;

import '../logger.dart';

class HttpService {
  const HttpService();

  Future<http.Response> get(String url) {
    return rt.retry(
      () async {
        http.Response response =
            await http.get(url).timeout(const Duration(seconds: 5));
        int statusCode = response.statusCode;
        if (statusCode >= 500) {
          throw _ServerException(statusCode);
        }
        return response;
      },
      retryIf: (e) {
        Logger.debugLog('Retrying', e);
        return e is _ServerException ||
            e is SocketException ||
            e is TimeoutException;
      },
      maxDelay: const Duration(seconds: 30),
    );
  }
}

class _ServerException implements Exception {
  final int statusCode;

  const _ServerException(this.statusCode);

  @override
  String toString() => 'Server error: $statusCode';
}
