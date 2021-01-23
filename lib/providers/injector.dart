import 'package:get/get.dart';

import '../data/position_repository.dart';
import '../data/position_service.dart';
import 'http/http_provider.dart';
import 'http/http_service.dart';

T inject<T>() => Get.find<T>();

/// Injects dependencies.
abstract class Injector {
  static void putDependencies() => InjectorConfig.i.putDependencies();
}

class InjectorConfig {
  static InjectorConfig i = const InjectorConfig();

  const InjectorConfig();

  void putDependencies() {
    const httpService = HttpService();
    const httpProvider = HttpProvider(httpService);
    const positionService = PositionService(httpProvider);
    final positionRepository = PositionRepository(positionService);
    putDependency(positionRepository);
  }

  void putDependency<T>(T dependency) =>
      Get.put<T>(dependency, permanent: true);
}
